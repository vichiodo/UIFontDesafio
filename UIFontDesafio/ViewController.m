//
//  ViewController.m
//  UIFontDesafio
//
//  Created by Joaquim Pessôa Filho on 23/02/15.
//  Copyright (c) 2015 Joaquim Pessôa Filho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize seuNome, nome;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(sumirTeclado)]];
    //Outro jeito de esconder o teclado - MELHOR
    //[self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)zapfino:(id)sender {
    UIFont *font = [UIFont fontWithName:@"Zapfino" size:17];
    [seuNome setFont:font];
    
}

- (IBAction)helvetica:(id)sender {
    UIFont *font = [UIFont fontWithName:@"Helvetica" size:17];
    [seuNome setFont:font];
    
}

- (IBAction)papyrus:(id)sender {
    UIFont *font = [UIFont fontWithName:@"Papyrus" size:17];
    [seuNome setFont:font];
    
}

- (IBAction)courier:(id)sender {
    UIFont *font = [UIFont fontWithName:@"Courier New" size:17];
    [seuNome setFont:font];
    
}

- (IBAction)mudarNome:(id)sender {
    [seuNome setText:[nome text]];
    [nome resignFirstResponder];
}

- (void)sumirTeclado{
    [nome resignFirstResponder];
}

//metodo para sumir o teclado - MELHOR (Metodo da view)
//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//  [nome resignFirstResponder];
//}
@end
