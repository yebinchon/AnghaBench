; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_comctl32_classes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_class.c_test_comctl32_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@test_comctl32_classes.classes = internal global [26 x i8*] [i8* inttoptr (i64 146 to i8*), i8* inttoptr (i64 135 to i8*), i8* inttoptr (i64 145 to i8*), i8* inttoptr (i64 134 to i8*), i8* inttoptr (i64 144 to i8*), i8* inttoptr (i64 133 to i8*), i8* inttoptr (i64 132 to i8*), i8* inttoptr (i64 143 to i8*), i8* inttoptr (i64 131 to i8*), i8* inttoptr (i64 130 to i8*), i8* inttoptr (i64 142 to i8*), i8* inttoptr (i64 141 to i8*), i8* inttoptr (i64 140 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* inttoptr (i64 129 to i8*), i8* inttoptr (i64 139 to i8*), i8* inttoptr (i64 138 to i8*), i8* inttoptr (i64 137 to i8*), i8* inttoptr (i64 128 to i8*), i8* inttoptr (i64 136 to i8*), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"SysLink\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"!Button\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"!Edit\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"!Static\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"!Listbox\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"!ComboBox\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"!ComboLBox\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s class %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"CreateProcess failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_comctl32_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_comctl32_classes() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = call i32 @winetest_get_mainargs(i8*** %5)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %39, %0
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 26
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 4)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 4, i32* %18, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [26 x i8*], [26 x i8*]* @test_comctl32_classes.classes, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %21, i8* %25)
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @CreateProcessA(i32* null, i8* %10, i32* null, i32* null, i32 %27, i32 0, i32* null, i32* null, %struct.TYPE_6__* %4, %struct.TYPE_7__* %3)
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @winetest_wait_child_process(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CloseHandle(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CloseHandle(i32 %37)
  br label %39

39:                                               ; preds = %16
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @winetest_get_mainargs(i8***) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #2

declare dso_local i32 @winetest_wait_child_process(i32) #2

declare dso_local i32 @CloseHandle(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
