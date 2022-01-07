; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_param.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cparse.c_cp_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_16__*, %struct.TYPE_12__*, i32*, i32, i32* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i64 }

@LJ_ERR_XSYNTAX = common dso_local global i32 0, align 4
@LJ_ERR_FFI_NUMPARAM = common dso_local global i32 0, align 4
@CTOK_IDENT = common dso_local global i8 0, align 1
@CTID_INT32 = common dso_local global i64 0, align 8
@CTOK_INTEGER = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [15 x i8] c"type parameter\00", align 1
@CTID_CTYPEID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.TYPE_15__*)* @cp_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @cp_param(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = call signext i8 @cp_get(%struct.TYPE_15__* %7)
  store i8 %8, i8* %4, align 1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i8, i8* %4, align 1
  %13 = call i64 @lj_char_isident(i8 signext %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i8, i8* %4, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 36
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = load i8, i8* %4, align 1
  %22 = load i32, i32* @LJ_ERR_XSYNTAX, align 4
  %23 = call i32 @cp_errmsg(%struct.TYPE_15__* %20, i8 signext %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp uge i32* %28, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27, %24
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = load i32, i32* @LJ_ERR_FFI_NUMPARAM, align 4
  %38 = call i32 @cp_err(%struct.TYPE_15__* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 5
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @tvisstr(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @strV(i32* %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load i8, i8* @CTOK_IDENT, align 1
  store i8 %63, i8* %2, align 1
  br label %124

64:                                               ; preds = %39
  %65 = load i32*, i32** %5, align 8
  %66 = call i64 @tvisnumber(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @numberVint(i32* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load i64, i64* @CTID_INT32, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  %78 = load i8, i8* @CTOK_INTEGER, align 1
  store i8 %78, i8* %2, align 1
  br label %124

79:                                               ; preds = %64
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @tviscdata(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %79
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = ptrtoint i32* %87 to i64
  %94 = ptrtoint i32* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = add nsw i32 %97, 1
  %99 = call i32 @lj_err_argtype(%struct.TYPE_16__* %86, i32 %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %83, %79
  %101 = load i32*, i32** %5, align 8
  %102 = call %struct.TYPE_14__* @cdataV(i32* %101)
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %6, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CTID_CTYPEID, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = call i64 @cdataptr(%struct.TYPE_14__* %109)
  %111 = inttoptr i64 %110 to i64*
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  br label %123

116:                                              ; preds = %100
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  br label %123

123:                                              ; preds = %116, %108
  store i8 36, i8* %2, align 1
  br label %124

124:                                              ; preds = %123, %68, %47
  %125 = load i8, i8* %2, align 1
  ret i8 %125
}

declare dso_local signext i8 @cp_get(%struct.TYPE_15__*) #1

declare dso_local i64 @lj_char_isident(i8 signext) #1

declare dso_local i32 @cp_errmsg(%struct.TYPE_15__*, i8 signext, i32) #1

declare dso_local i32 @cp_err(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i64 @tvisnumber(i32*) #1

declare dso_local i32 @numberVint(i32*) #1

declare dso_local i32 @tviscdata(i32*) #1

declare dso_local i32 @lj_err_argtype(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local %struct.TYPE_14__* @cdataV(i32*) #1

declare dso_local i64 @cdataptr(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
