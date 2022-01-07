; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lex.c_lex_number.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lex.c_lex_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@LJ_DUALNUM = common dso_local global i64 0, align 8
@STRSCAN_OPT_TOINT = common dso_local global i32 0, align 4
@STRSCAN_OPT_TONUM = common dso_local global i32 0, align 4
@LJ_HASFFI = common dso_local global i64 0, align 8
@STRSCAN_OPT_LL = common dso_local global i32 0, align 4
@STRSCAN_OPT_IMAG = common dso_local global i32 0, align 4
@STRSCAN_INT = common dso_local global i64 0, align 8
@LJ_TISNUM = common dso_local global i32 0, align 4
@STRSCAN_NUM = common dso_local global i64 0, align 8
@STRSCAN_ERROR = common dso_local global i64 0, align 8
@TK_number = common dso_local global i32 0, align 4
@LJ_ERR_XNUMBER = common dso_local global i32 0, align 4
@CTID_COMPLEX_DOUBLE = common dso_local global i32 0, align 4
@CTID_INT64 = common dso_local global i32 0, align 4
@CTID_UINT64 = common dso_local global i32 0, align 4
@STRSCAN_I64 = common dso_local global i64 0, align 8
@STRSCAN_IMAG = common dso_local global i64 0, align 8
@STRSCAN_U64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*)* @lex_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_number(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  store i32 101, i32* %7, align 4
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @lj_char_isdigit(i32 %10)
  %12 = call i32 @lua_assert(i32 %11)
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = icmp eq i32 %15, 48
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = call i32 @lex_savenext(%struct.TYPE_21__* %18)
  %20 = or i32 %19, 32
  %21 = icmp eq i32 %20, 120
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 112, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %17, %2
  br label %24

24:                                               ; preds = %54, %23
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @lj_char_isident(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 46
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, 32
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i1 [ false, %40 ], [ %49, %45 ]
  br label %52

52:                                               ; preds = %50, %30, %24
  %53 = phi i1 [ true, %30 ], [ true, %24 ], [ %51, %50 ]
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %6, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = call i32 @lex_savenext(%struct.TYPE_21__* %58)
  br label %24

60:                                               ; preds = %52
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = call i32 @lex_save(%struct.TYPE_21__* %61, i8 signext 0)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = call i64 @sbufB(i32* %64)
  %66 = inttoptr i64 %65 to i32*
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = load i64, i64* @LJ_DUALNUM, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @STRSCAN_OPT_TOINT, align 4
  br label %74

72:                                               ; preds = %60
  %73 = load i32, i32* @STRSCAN_OPT_TONUM, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load i64, i64* @LJ_HASFFI, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @STRSCAN_OPT_LL, align 4
  %80 = load i32, i32* @STRSCAN_OPT_IMAG, align 4
  %81 = or i32 %79, %80
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i32 [ %81, %78 ], [ 0, %82 ]
  %85 = or i32 %75, %84
  %86 = call i64 @lj_strscan_scan(i32* %66, %struct.TYPE_20__* %67, i32 %85)
  store i64 %86, i64* %5, align 8
  %87 = load i64, i64* @LJ_DUALNUM, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @STRSCAN_INT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %95 = load i32, i32* @LJ_TISNUM, align 4
  %96 = call i32 @setitype(%struct.TYPE_20__* %94, i32 %95)
  br label %113

97:                                               ; preds = %89, %83
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @STRSCAN_NUM, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %112

102:                                              ; preds = %97
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @STRSCAN_ERROR, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @lua_assert(i32 %106)
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %109 = load i32, i32* @TK_number, align 4
  %110 = load i32, i32* @LJ_ERR_XNUMBER, align 4
  %111 = call i32 @lj_lex_error(%struct.TYPE_21__* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %102, %101
  br label %113

113:                                              ; preds = %112, %93
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lj_char_isdigit(i32) #1

declare dso_local i32 @lex_savenext(%struct.TYPE_21__*) #1

declare dso_local i64 @lj_char_isident(i32) #1

declare dso_local i32 @lex_save(%struct.TYPE_21__*, i8 signext) #1

declare dso_local i64 @lj_strscan_scan(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @sbufB(i32*) #1

declare dso_local i32 @setitype(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @lj_lex_error(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
