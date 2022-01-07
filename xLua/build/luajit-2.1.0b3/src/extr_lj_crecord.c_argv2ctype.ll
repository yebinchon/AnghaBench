; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_argv2ctype.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_crecord.c_argv2ctype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__, %struct.TYPE_19__*, i32*, i8*, i8*, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@IR_EQ = common dso_local global i32 0, align 4
@IRT_STR = common dso_local global i32 0, align 4
@CPARSE_MODE_ABSTRACT = common dso_local global i32 0, align 4
@CPARSE_MODE_NOIMPLICIT = common dso_local global i32 0, align 4
@LJ_TRERR_BADTYPE = common dso_local global i32 0, align 4
@CTID_CTYPEID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, i32, i32*)* @argv2ctype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @argv2ctype(%struct.TYPE_16__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @tref_isstr(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @strV(i32* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* @IR_EQ, align 4
  %19 = load i32, i32* @IRT_STR, align 4
  %20 = call i32 @IRTG(i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @lj_ir_kstr(%struct.TYPE_16__* %22, i32* %23)
  %25 = call i32 @emitir(i32 %20, i32 %21, i32 %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  store i32 %28, i32* %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = call i32 @J2G(%struct.TYPE_16__* %30)
  %32 = call %struct.TYPE_19__* @ctype_ctsG(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i8* @strdata(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  store i8* %39, i8** %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i8* @strdata(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @CPARSE_MODE_ABSTRACT, align 4
  %46 = load i32, i32* @CPARSE_MODE_NOIMPLICIT, align 4
  %47 = or i32 %45, %46
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = call i64 @lj_cparse(%struct.TYPE_18__* %9)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %15
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51, %15
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = load i32, i32* @LJ_TRERR_BADTYPE, align 4
  %61 = call i32 @lj_trace_err(%struct.TYPE_16__* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %51
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %4, align 8
  br label %87

66:                                               ; preds = %3
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call %struct.TYPE_17__* @argv2cdata(%struct.TYPE_16__* %67, i32 %68, i32* %69)
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %11, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CTID_CTYPEID, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @crec_constructor(%struct.TYPE_16__* %77, %struct.TYPE_17__* %78, i32 %79)
  br label %85

81:                                               ; preds = %66
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  br label %85

85:                                               ; preds = %81, %76
  %86 = phi i64 [ %80, %76 ], [ %84, %81 ]
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %85, %62
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i64 @tref_isstr(i32) #1

declare dso_local i32* @strV(i32*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @lj_ir_kstr(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_19__* @ctype_ctsG(i32) #1

declare dso_local i32 @J2G(%struct.TYPE_16__*) #1

declare dso_local i8* @strdata(i32*) #1

declare dso_local i64 @lj_cparse(%struct.TYPE_18__*) #1

declare dso_local i32 @lj_trace_err(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @argv2cdata(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i64 @crec_constructor(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
