; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_tok2str.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_tok2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CTOK_FIRSTDECL = common dso_local global i64 0, align 8
@CTOK_OFS = common dso_local global i64 0, align 8
@ctoknames = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"char(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i64)* @cp_tok2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cp_tok2str(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CTOK_FIRSTDECL, align 8
  %8 = icmp slt i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @lua_assert(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @CTOK_OFS, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i8**, i8*** @ctoknames, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @CTOK_OFS, align 8
  %18 = sub nsw i64 %16, %17
  %19 = sub nsw i64 %18, 1
  %20 = getelementptr inbounds i8*, i8** %15, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %38

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @lj_char_iscntrl(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i8* @lj_strfmt_pushf(i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i8* %31, i8** %3, align 8
  br label %38

32:                                               ; preds = %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i8* @lj_strfmt_pushf(i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %32, %26, %14
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lj_char_iscntrl(i64) #1

declare dso_local i8* @lj_strfmt_pushf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
