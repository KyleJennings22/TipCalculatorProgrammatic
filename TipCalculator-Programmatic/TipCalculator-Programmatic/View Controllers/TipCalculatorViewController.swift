//
//  TipCalculatorViewController.swift
//  TipCalculator-Programmatic
//
//  Created by Kyle Jennings on 12/17/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {
  // MARK: - Properties
  var safeArea: UILayoutGuide {
    return view.safeAreaLayoutGuide
  }
  
  // MARK: - Lifecycle Functions
  override func loadView() {
    super.loadView()
    addSubviews()
    setupMealCostStackView()
    setupTipStackView()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
  }
  
  func addSubviews() {
    view.addSubview(mealLabel)
    view.addSubview(mealCostTextField)
    view.addSubview(mealCostStackView)
    view.addSubview(tipLabel)
    view.addSubview(tipTextField)
    view.addSubview(tipStackView)
  }
  
  func setupMealCostStackView() {
    mealCostStackView.addArrangedSubview(mealLabel)
    mealCostStackView.addArrangedSubview(mealCostTextField)
    mealCostStackView.anchor(top: safeArea.topAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: SpacingConstants.verticalObjectBuffer, paddingBottom: 0, paddingLeft: SpacingConstants.outerHorizontalPadding, paddingRight: SpacingConstants.outerHorizontalPadding)
  }
  func setupTipStackView() {
    tipStackView.addArrangedSubview(tipLabel)
    tipStackView.addArrangedSubview(tipTextField)
    tipStackView.anchor(top: mealCostStackView.bottomAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: 50, paddingBottom: 0, paddingLeft: SpacingConstants.outerHorizontalPadding, paddingRight: SpacingConstants.outerHorizontalPadding)
  }
  // Meal Cost
  let mealLabel: UILabel = {
    let label = UILabel()
    label.text = "How much was your meal?"
    label.textAlignment = .center
    return label
  }()
  
  let mealCostTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Enter the cost of your meal"
    textField.layer.borderWidth = 0.25
    return textField
  }()
  
  let mealCostStackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.alignment = .fill
    stackView.distribution = .fill
    return stackView
  }()
  
  // Tipping
  let tipLabel: UILabel = {
    let label = UILabel()
    label.text = "How much would you like to tip?"
    label.textAlignment = .center
    return label
  }()
  
  let tipTextField: UITextField = {
    let textField = UITextField()
    textField.placeholder = "Enter the tip amount"
    textField.layer.borderWidth = 0.25
    return textField
  }()
  
  let tipStackView: UIStackView = {
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.alignment = .fill
    stackView.distribution = .fill
    return stackView
  }()
}
