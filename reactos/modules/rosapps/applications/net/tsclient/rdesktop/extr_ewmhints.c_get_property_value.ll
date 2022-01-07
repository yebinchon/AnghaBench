; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_ewmhints.c_get_property_value.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_ewmhints.c_get_property_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@True = common dso_local global i32 0, align 4
@None = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Atom %s does not exist\0A\00", align 1
@False = common dso_local global i32 0, align 4
@AnyPropertyType = common dso_local global i32 0, align 4
@Success = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"XGetWindowProperty failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Window is missing property %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s is too big for me\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s has bad format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8*, i64, i64*, i8**, i32)* @get_property_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_property_value(%struct.TYPE_3__* %0, i32 %1, i8* %2, i64 %3, i64* %4, i8** %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* @True, align 4
  %26 = call i64 @XInternAtom(i32 %23, i8* %24, i32 %25)
  store i64 %26, i64* %17, align 8
  %27 = load i64, i64* %17, align 8
  %28 = load i64, i64* @None, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i32 -1, i32* %8, align 4
  br label %82

34:                                               ; preds = %7
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* @False, align 4
  %42 = load i32, i32* @AnyPropertyType, align 4
  %43 = load i64*, i64** %13, align 8
  %44 = load i8**, i8*** %14, align 8
  %45 = call i32 @XGetWindowProperty(i32 %37, i32 %38, i64 %39, i32 0, i64 %40, i32 %41, i32 %42, i64* %18, i32* %19, i64* %43, i64* %20, i8** %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @Success, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %82

52:                                               ; preds = %34
  %53 = load i64, i64* %18, align 8
  %54 = load i64, i64* @None, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %19, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %62, %59
  store i32 -1, i32* %8, align 4
  br label %82

67:                                               ; preds = %56
  %68 = load i64, i64* %20, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  store i32 -1, i32* %8, align 4
  br label %82

74:                                               ; preds = %67
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 32
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  store i32 -1, i32* %8, align 4
  br label %82

81:                                               ; preds = %74
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %77, %70, %66, %49, %30
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i64 @XInternAtom(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @XGetWindowProperty(i32, i32, i64, i32, i64, i32, i32, i64*, i32*, i64*, i64*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
