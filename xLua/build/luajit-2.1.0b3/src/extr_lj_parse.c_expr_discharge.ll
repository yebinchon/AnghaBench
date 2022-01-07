; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_expr_discharge.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_expr_discharge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@VUPVAL = common dso_local global i64 0, align 8
@BC_UGET = common dso_local global i32 0, align 4
@VGLOBAL = common dso_local global i64 0, align 8
@BC_GGET = common dso_local global i32 0, align 4
@VINDEXED = common dso_local global i64 0, align 8
@BC_TGETS = common dso_local global i32 0, align 4
@BCMAX_C = common dso_local global i32 0, align 4
@BC_TGETB = common dso_local global i32 0, align 4
@BC_TGETV = common dso_local global i32 0, align 4
@VCALL = common dso_local global i64 0, align 8
@VNONRELOC = common dso_local global i8* null, align 8
@VLOCAL = common dso_local global i64 0, align 8
@VRELOCABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*)* @expr_discharge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expr_discharge(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VUPVAL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @BC_UGET, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BCINS_AD(i32 %13, i32 0, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %128

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VGLOBAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @BC_GGET, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = call i32 @const_str(i32* %28, %struct.TYPE_8__* %29)
  %31 = call i32 @BCINS_AD(i32 %27, i32 0, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %127

32:                                               ; preds = %20
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VINDEXED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %94

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load i32, i32* @BC_TGETS, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = xor i32 %54, -1
  %56 = call i32 @BCINS_ABC(i32 %48, i32 0, i32 %53, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %86

57:                                               ; preds = %38
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @BCMAX_C, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* @BC_TGETB, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @BCMAX_C, align 4
  %70 = add nsw i32 %69, 1
  %71 = sub nsw i32 %68, %70
  %72 = call i32 @BCINS_ABC(i32 %62, i32 0, i32 %67, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %85

73:                                               ; preds = %57
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @bcreg_free(i32* %74, i32 %75)
  %77 = load i32, i32* @BC_TGETV, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @BCINS_ABC(i32 %77, i32 0, i32 %82, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %73, %61
  br label %86

86:                                               ; preds = %85, %47
  %87 = load i32*, i32** %3, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @bcreg_free(i32* %87, i32 %92)
  br label %126

94:                                               ; preds = %32
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @VCALL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %94
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 8
  %110 = load i8*, i8** @VNONRELOC, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %139

114:                                              ; preds = %94
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @VLOCAL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i8*, i8** @VNONRELOC, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %139

125:                                              ; preds = %114
  br label %139

126:                                              ; preds = %86
  br label %127

127:                                              ; preds = %126, %26
  br label %128

128:                                              ; preds = %127, %12
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @bcemit_INS(i32* %129, i32 %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  %136 = load i64, i64* @VRELOCABLE, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %128, %125, %120, %100
  ret void
}

declare dso_local i32 @BCINS_AD(i32, i32, i32) #1

declare dso_local i32 @const_str(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @BCINS_ABC(i32, i32, i32, i32) #1

declare dso_local i32 @bcreg_free(i32*, i32) #1

declare dso_local i32 @bcemit_INS(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
