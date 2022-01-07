; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_pki.c_WinPKIErrorString.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_pki.c_WinPKIErrorString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WinPKIErrorString.error_string = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c"Bad UID.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Key does not exist.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Keyset does not exist.\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid algorithm specified.\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Bad version of provider.\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid Signature.\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"An error occurred while performing an operation on a cryptographic message.\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Unknown cryptographic algorithm.\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Invalid cryptographic message type.\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"The hash value is not correct\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Invalid issuer and/or serial number.\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"The length specified for the output data was insufficient.\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"An error occurred during encode or decode operation.\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"An error occurred while reading or writing to a file.\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Cannot find object or property.\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"The object or property already exists.\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"No provider was specified for the store or object.\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"The previous certificate or CRL context was deleted.\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Cannot find the requested object.\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Private key or certificate issue\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Not a cryptographic message.\00", align 1
@.str.21 = private unnamed_addr constant [88 x i8] c"The signed cryptographic message does not have a signer for the specified signer index.\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"The certificate is revoked.\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Cannot check certificate revocation.\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Invalid string.\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"The cryptographic operation failed due to a local security option setting.\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Cannot complete usage check.\00", align 1
@.str.27 = private unnamed_addr constant [87 x i8] c"None of the signers of the cryptographic message or certificate trust list is trusted.\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"The root certificate is not trusted.\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Not digitally signed.\00", align 1
@.str.30 = private unnamed_addr constant [66 x i8] c"One of the certificates used was marked as untrusted by the user.\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"The timestamp could not be verified.\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Unknown PKI error 0x%08lX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @WinPKIErrorString() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @GetLastError()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = ashr i32 %4, 16
  %6 = icmp ne i32 %5, 32777
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 16
  %10 = icmp ne i32 %9, 32779
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i8* (...) @WindowsErrorString()
  store i8* %12, i8** %1, align 8
  br label %50

13:                                               ; preds = %7, %0
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %47 [
    i32 133, label %15
    i32 131, label %16
    i32 135, label %17
    i32 136, label %18
    i32 132, label %19
    i32 134, label %20
    i32 155, label %21
    i32 138, label %22
    i32 160, label %23
    i32 162, label %24
    i32 156, label %25
    i32 167, label %26
    i32 168, label %27
    i32 163, label %28
    i32 153, label %29
    i32 164, label %30
    i32 148, label %31
    i32 165, label %32
    i32 149, label %33
    i32 139, label %34
    i32 150, label %34
    i32 151, label %34
    i32 166, label %35
    i32 145, label %36
    i32 141, label %37
    i32 146, label %38
    i32 147, label %38
    i32 142, label %38
    i32 152, label %38
    i32 159, label %39
    i32 158, label %39
    i32 161, label %39
    i32 157, label %39
    i32 154, label %39
    i32 140, label %40
    i32 143, label %41
    i32 137, label %41
    i32 144, label %42
    i32 169, label %43
    i32 129, label %44
    i32 130, label %45
    i32 128, label %46
  ]

15:                                               ; preds = %13
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %50

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %50

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %50

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %50

19:                                               ; preds = %13
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %50

20:                                               ; preds = %13
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %50

21:                                               ; preds = %13
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %50

22:                                               ; preds = %13
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %50

23:                                               ; preds = %13
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %50

24:                                               ; preds = %13
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  br label %50

25:                                               ; preds = %13
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8** %1, align 8
  br label %50

26:                                               ; preds = %13
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i8** %1, align 8
  br label %50

27:                                               ; preds = %13
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i8** %1, align 8
  br label %50

28:                                               ; preds = %13
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i8** %1, align 8
  br label %50

29:                                               ; preds = %13
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8** %1, align 8
  br label %50

30:                                               ; preds = %13
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8** %1, align 8
  br label %50

31:                                               ; preds = %13
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0), i8** %1, align 8
  br label %50

32:                                               ; preds = %13
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i8** %1, align 8
  br label %50

33:                                               ; preds = %13
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8** %1, align 8
  br label %50

34:                                               ; preds = %13, %13, %13
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i8** %1, align 8
  br label %50

35:                                               ; preds = %13
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8** %1, align 8
  br label %50

36:                                               ; preds = %13
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.21, i64 0, i64 0), i8** %1, align 8
  br label %50

37:                                               ; preds = %13
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i8** %1, align 8
  br label %50

38:                                               ; preds = %13, %13, %13, %13
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8** %1, align 8
  br label %50

39:                                               ; preds = %13, %13, %13, %13, %13
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8** %1, align 8
  br label %50

40:                                               ; preds = %13
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i8** %1, align 8
  br label %50

41:                                               ; preds = %13, %13
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i8** %1, align 8
  br label %50

42:                                               ; preds = %13
  store i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.27, i64 0, i64 0), i8** %1, align 8
  br label %50

43:                                               ; preds = %13
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0), i8** %1, align 8
  br label %50

44:                                               ; preds = %13
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8** %1, align 8
  br label %50

45:                                               ; preds = %13
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.30, i64 0, i64 0), i8** %1, align 8
  br label %50

46:                                               ; preds = %13
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0), i8** %1, align 8
  br label %50

47:                                               ; preds = %13
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @static_sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @WinPKIErrorString.error_string, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 %48)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @WinPKIErrorString.error_string, i64 0, i64 0), i8** %1, align 8
  br label %50

50:                                               ; preds = %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %11
  %51 = load i8*, i8** %1, align 8
  ret i8* %51
}

declare dso_local i32 @GetLastError(...) #1

declare dso_local i8* @WindowsErrorString(...) #1

declare dso_local i32 @static_sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
