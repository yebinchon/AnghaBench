; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_lex_match.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_lex_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@LJ_ERR_XMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i64)* @lex_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_match(%struct.TYPE_7__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @lex_opt(%struct.TYPE_7__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @err_token(%struct.TYPE_7__* %22, i32 %23)
  br label %41

25:                                               ; preds = %15
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i8* @lj_lex_token2str(%struct.TYPE_7__* %26, i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @lj_lex_token2str(%struct.TYPE_7__* %29, i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LJ_ERR_XMATCH, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @lj_lex_error(%struct.TYPE_7__* %32, i32 %35, i32 %36, i8* %37, i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %25, %21
  br label %42

42:                                               ; preds = %41, %4
  ret void
}

declare dso_local i32 @lex_opt(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @err_token(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @lj_lex_token2str(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @lj_lex_error(%struct.TYPE_7__*, i32, i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
