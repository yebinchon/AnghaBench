; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_tostr.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_tostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@ASMREF_L = common dso_local global i32 0, align 4
@IRTOSTR_NUM = common dso_local global i64 0, align 8
@ASMREF_TMP1 = common dso_local global i32 0, align 4
@lj_ir_callinfo = common dso_local global i32* null, align 8
@IRCALL_lj_strfmt_num = common dso_local global i64 0, align 8
@IRTOSTR_INT = common dso_local global i64 0, align 8
@IRCALL_lj_strfmt_int = common dso_local global i64 0, align 8
@IRCALL_lj_strfmt_char = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @asm_tostr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_tostr(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load i32, i32* @ASMREF_L, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IRTOSTR_NUM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @ASMREF_TMP1, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** @lj_ir_callinfo, align 8
  %22 = load i64, i64* @IRCALL_lj_strfmt_num, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %5, align 8
  br label %43

24:                                               ; preds = %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IRTOSTR_INT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load i32*, i32** @lj_ir_callinfo, align 8
  %36 = load i64, i64* @IRCALL_lj_strfmt_int, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %5, align 8
  br label %42

38:                                               ; preds = %24
  %39 = load i32*, i32** @lj_ir_callinfo, align 8
  %40 = load i64, i64* @IRCALL_lj_strfmt_char, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %5, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %18
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @asm_setupresult(%struct.TYPE_11__* %44, %struct.TYPE_10__* %45, i32* %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %51 = call i32 @asm_gencall(%struct.TYPE_11__* %48, i32* %49, i32* %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IRTOSTR_NUM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %43
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = load i32, i32* @ASMREF_TMP1, align 4
  %61 = call i32 @ra_releasetmp(%struct.TYPE_11__* %59, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @asm_tvptr(%struct.TYPE_11__* %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %57, %43
  ret void
}

declare dso_local i32 @asm_setupresult(%struct.TYPE_11__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @asm_gencall(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @asm_tvptr(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ra_releasetmp(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
