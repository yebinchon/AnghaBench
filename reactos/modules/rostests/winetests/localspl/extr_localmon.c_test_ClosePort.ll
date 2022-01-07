; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_ClosePort.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_ClosePort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_com = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"got %u with %u (expected '!= 0')\0A\00", align 1
@have_lpt = common dso_local global i64* null, align 8
@have_file = common dso_local global i64* null, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ClosePort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ClosePort() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64* null, i64** %3, align 8
  %6 = load i64*, i64** @have_com, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %0
  %11 = load i64*, i64** @have_com, align 8
  store i64* %11, i64** %3, align 8
  store i64 3735928559, i64* %1, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = call i64 @pOpenPort(i64* %12, i64* %1)
  store i64 %13, i64* %4, align 8
  store i64 3735928559, i64* %2, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = call i64 @pOpenPort(i64* %14, i64* %2)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %10
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* %1, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = call i32 @SetLastError(i32 -559038737)
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @pClosePort(i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 @ok(i64 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %22, %18, %10
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = call i32 @SetLastError(i32 -559038737)
  %35 = load i64, i64* %1, align 8
  %36 = call i64 @pClosePort(i64 %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 @ok(i64 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %30
  br label %42

42:                                               ; preds = %41, %0
  %43 = load i64*, i64** @have_lpt, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %42
  %48 = load i64*, i64** @have_lpt, align 8
  store i64* %48, i64** %3, align 8
  store i64 3735928559, i64* %1, align 8
  %49 = load i64*, i64** %3, align 8
  %50 = call i64 @pOpenPort(i64* %49, i64* %1)
  store i64 %50, i64* %4, align 8
  store i64 3735928559, i64* %2, align 8
  %51 = load i64*, i64** %3, align 8
  %52 = call i64 @pOpenPort(i64* %51, i64* %2)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* %1, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = call i32 @SetLastError(i32 -559038737)
  %61 = load i64, i64* %2, align 8
  %62 = call i64 @pClosePort(i64 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 (...) @GetLastError()
  %66 = call i32 @ok(i64 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %55, %47
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = call i32 @SetLastError(i32 -559038737)
  %72 = load i64, i64* %1, align 8
  %73 = call i64 @pClosePort(i64 %72)
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 @ok(i64 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %67
  br label %79

79:                                               ; preds = %78, %42
  %80 = load i64*, i64** @have_file, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %79
  %85 = load i64*, i64** @have_file, align 8
  store i64* %85, i64** %3, align 8
  store i64 3735928559, i64* %1, align 8
  %86 = load i64*, i64** %3, align 8
  %87 = call i64 @pOpenPort(i64* %86, i64* %1)
  store i64 %87, i64* %4, align 8
  store i64 3735928559, i64* %2, align 8
  %88 = load i64*, i64** %3, align 8
  %89 = call i64 @pOpenPort(i64* %88, i64* %2)
  store i64 %89, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %84
  %93 = load i64, i64* %2, align 8
  %94 = load i64, i64* %1, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = call i32 @SetLastError(i32 -559038737)
  %98 = load i64, i64* %2, align 8
  %99 = call i64 @pClosePort(i64 %98)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 (...) @GetLastError()
  %103 = call i32 @ok(i64 %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %101, i32 %102)
  br label %104

104:                                              ; preds = %96, %92, %84
  %105 = load i64, i64* %4, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = call i32 @SetLastError(i32 -559038737)
  %109 = load i64, i64* %1, align 8
  %110 = call i64 @pClosePort(i64 %109)
  store i64 %110, i64* %4, align 8
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* %4, align 8
  %113 = call i32 (...) @GetLastError()
  %114 = call i32 @ok(i64 %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %112, i32 %113)
  br label %115

115:                                              ; preds = %107, %104
  br label %116

116:                                              ; preds = %115, %79
  ret void
}

declare dso_local i64 @pOpenPort(i64*, i64*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @pClosePort(i64) #1

declare dso_local i32 @ok(i64, i8*, i64, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
