; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_yy_get_previous_state.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_yy_get_previous_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yy_start = common dso_local global i64 0, align 8
@YY_MORE_ADJ = common dso_local global i64 0, align 8
@yy_c_buf_p = common dso_local global i8* null, align 8
@yy_ec = common dso_local global i32* null, align 8
@yy_accept = common dso_local global i64* null, align 8
@yy_last_accepting_state = common dso_local global i64 0, align 8
@yy_last_accepting_cpos = common dso_local global i8* null, align 8
@yy_chk = common dso_local global i64* null, align 8
@yy_base = common dso_local global i64* null, align 8
@yy_def = common dso_local global i64* null, align 8
@yy_meta = common dso_local global i64* null, align 8
@yy_nxt = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @yy_get_previous_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @yy_get_previous_state() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @yy_start, align 8
  store i64 %4, i64* %1, align 8
  %5 = call i64 (...) @YY_AT_BOL()
  %6 = load i64, i64* %1, align 8
  %7 = add i64 %6, %5
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* @YY_MORE_ADJ, align 8
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %2, align 8
  br label %10

10:                                               ; preds = %80, %0
  %11 = load i8*, i8** %2, align 8
  %12 = load i8*, i8** @yy_c_buf_p, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = load i8*, i8** %2, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32*, i32** @yy_ec, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @YY_SC_TO_UI(i8 signext %22)
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i32 [ %25, %19 ], [ 1, %26 ]
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %3, align 8
  %30 = load i64*, i64** @yy_accept, align 8
  %31 = load i64, i64* %1, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i64, i64* %1, align 8
  store i64 %36, i64* @yy_last_accepting_state, align 8
  %37 = load i8*, i8** %2, align 8
  store i8* %37, i8** @yy_last_accepting_cpos, align 8
  br label %38

38:                                               ; preds = %35, %27
  br label %39

39:                                               ; preds = %67, %38
  %40 = load i64*, i64** @yy_chk, align 8
  %41 = load i64*, i64** @yy_base, align 8
  %42 = load i64, i64* %1, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %44, %45
  %47 = getelementptr inbounds i64, i64* %40, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %1, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %39
  %52 = load i64*, i64** @yy_def, align 8
  %53 = load i64, i64* %1, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = icmp uge i64 %58, 416
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load i64*, i64** @yy_meta, align 8
  %62 = load i64, i64* %3, align 8
  %63 = trunc i64 %62 to i32
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %60, %51
  br label %39

68:                                               ; preds = %39
  %69 = load i64*, i64** @yy_nxt, align 8
  %70 = load i64*, i64** @yy_base, align 8
  %71 = load i64, i64* %1, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %3, align 8
  %75 = trunc i64 %74 to i32
  %76 = zext i32 %75 to i64
  %77 = add i64 %73, %76
  %78 = getelementptr inbounds i64, i64* %69, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %1, align 8
  br label %80

80:                                               ; preds = %68
  %81 = load i8*, i8** %2, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %2, align 8
  br label %10

83:                                               ; preds = %10
  %84 = load i64, i64* %1, align 8
  ret i64 %84
}

declare dso_local i64 @YY_AT_BOL(...) #1

declare dso_local i64 @YY_SC_TO_UI(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
