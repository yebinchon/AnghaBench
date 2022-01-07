; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_EM_LINELENGTH.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_test_EM_LINELENGTH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"richedit1\0Drichedit1\0Arichedit1\0D\0Arichedit1\00", align 1
@__const.test_EM_LINELENGTH.offset_test = private unnamed_addr constant [10 x [2 x i32]] [[2 x i32] [i32 0, i32 9], [2 x i32] [i32 5, i32 9], [2 x i32] [i32 10, i32 9], [2 x i32] [i32 15, i32 9], [2 x i32] [i32 20, i32 9], [2 x i32] [i32 25, i32 9], [2 x i32] [i32 30, i32 9], [2 x i32] [i32 35, i32 9], [2 x i32] [i32 40, i32 0], [2 x i32] [i32 45, i32 0]], align 16
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_LINELENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Length of line at offset %d is %ld, expected %d\0A\00", align 1
@is_lang_japanese = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Skip multibyte character tests on non-Japanese platform\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"wine\0Arichedit\8E\F0\0Awine\00", align 1
@__const.test_EM_LINELENGTH.offset_test1 = private unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 0, i32 4], [2 x i32] [i32 5, i32 9], [2 x i32] [i32 15, i32 4]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EM_LINELENGTH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EM_LINELENGTH() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [10 x [2 x i32]], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [3 x [2 x i32]], align 16
  %8 = call i32 @new_richedit(i32* null)
  store i32 %8, i32* %1, align 4
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %9 = bitcast [10 x [2 x i32]]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([10 x [2 x i32]]* @__const.test_EM_LINELENGTH.offset_test to i8*), i64 80, i1 false)
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @WM_SETTEXT, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = call i32 @SendMessageA(i32 %10, i32 %11, i32 0, i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %47, %0
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @EM_LINELENGTH, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %3, i64 0, i64 %22
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SendMessageA(i32 %19, i32 %20, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %3, i64 0, i64 %29
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %27, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %3, i64 0, i64 %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x [2 x i32]], [10 x [2 x i32]]* %3, i64 0, i64 %42
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %43, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %18
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load i32, i32* @is_lang_japanese, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call i32 @skip(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %99

55:                                               ; preds = %50
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %56 = bitcast [3 x [2 x i32]]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %56, i8* align 16 bitcast ([3 x [2 x i32]]* @__const.test_EM_LINELENGTH.offset_test1 to i8*), i64 24, i1 false)
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @WM_SETTEXT, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = call i32 @SendMessageA(i32 %57, i32 %58, i32 0, i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %95, %55
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %64, 3
  br i1 %65, label %66, label %98

66:                                               ; preds = %62
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @EM_LINELENGTH, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %7, i64 0, i64 %70
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @SendMessageA(i32 %67, i32 %68, i32 %73, i32 0)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %7, i64 0, i64 %77
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %75, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %7, i64 0, i64 %84
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %7, i64 0, i64 %90
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %66
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %62

98:                                               ; preds = %62
  br label %99

99:                                               ; preds = %98, %53
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @DestroyWindow(i32 %100)
  ret void
}

declare dso_local i32 @new_richedit(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
