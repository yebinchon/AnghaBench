; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlParserGetDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlIO.c_xmlParserGetDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmlInputCallbackInitialized = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParserGetDirectory(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load i64, i64* @xmlInputCallbackInitialized, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @xmlRegisterDefaultInputCallbacks()
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %63

15:                                               ; preds = %11
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strncpy(i8* %16, i8* %17, i32 1023)
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 1023
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %21 = call i64 @strlen(i8* %20)
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %21
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %33, %15
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %26 = icmp ugt i8* %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 -1
  store i8* %35, i8** %6, align 8
  br label %23

36:                                               ; preds = %32, %23
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %46, align 1
  br label %49

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %47, %45
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %51 = call i8* @xmlMemStrdup(i8* %50)
  store i8* %51, i8** %4, align 8
  br label %61

52:                                               ; preds = %36
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %54 = call i32* @getcwd(i8* %53, i32 1024)
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 1023
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %59 = call i8* @xmlMemStrdup(i8* %58)
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %49
  %62 = load i8*, i8** %4, align 8
  store i8* %62, i8** %2, align 8
  br label %63

63:                                               ; preds = %61, %14
  %64 = load i8*, i8** %2, align 8
  ret i8* %64
}

declare dso_local i32 @xmlRegisterDefaultInputCallbacks(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xmlMemStrdup(i8*) #1

declare dso_local i32* @getcwd(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
