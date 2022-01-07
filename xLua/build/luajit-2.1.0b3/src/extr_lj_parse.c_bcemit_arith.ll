; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_arith.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_parse.c_bcemit_arith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }

@OPR_POW = common dso_local global i64 0, align 8
@BC_POW = common dso_local global i64 0, align 8
@OPR_ADD = common dso_local global i64 0, align 8
@BC_ADDVV = common dso_local global i64 0, align 8
@BCMAX_C = common dso_local global i32 0, align 4
@BC_ADDVN = common dso_local global i64 0, align 8
@VNONRELOC = common dso_local global i64 0, align 8
@BCMAX_B = common dso_local global i32 0, align 4
@BC_ADDNV = common dso_local global i64 0, align 8
@VRELOCABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i64, %struct.TYPE_21__*, %struct.TYPE_21__*)* @bcemit_arith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcemit_arith(%struct.TYPE_20__* %0, i64 %1, %struct.TYPE_21__* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %16 = call i64 @foldarith(i64 %13, %struct.TYPE_21__* %14, %struct.TYPE_21__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %157

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @OPR_POW, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i64, i64* @BC_POW, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = call i32 @expr_toanyreg(%struct.TYPE_20__* %25, %struct.TYPE_21__* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = call i32 @expr_toanyreg(%struct.TYPE_20__* %28, %struct.TYPE_21__* %29)
  store i32 %30, i32* %9, align 4
  br label %102

31:                                               ; preds = %19
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @OPR_ADD, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* @BC_ADDVV, align 8
  %36 = add nsw i64 %34, %35
  store i64 %36, i64* %12, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %39 = call i32 @expr_toval(%struct.TYPE_20__* %37, %struct.TYPE_21__* %38)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %41 = call i64 @expr_isnumk(%struct.TYPE_21__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %31
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = call i32 @const_num(%struct.TYPE_20__* %44, %struct.TYPE_21__* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @BCMAX_C, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i64, i64* @BC_ADDVV, align 8
  %51 = load i64, i64* @BC_ADDVN, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load i64, i64* %12, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %12, align 8
  br label %59

55:                                               ; preds = %43, %31
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = call i32 @expr_toanyreg(%struct.TYPE_20__* %56, %struct.TYPE_21__* %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %61 = call i64 @expr_isnumk(%struct.TYPE_21__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VNONRELOC, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i1 [ true, %59 ], [ %68, %63 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @lua_assert(i32 %71)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %75 = call i32 @expr_toval(%struct.TYPE_20__* %73, %struct.TYPE_21__* %74)
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %77 = call i64 @expr_isnumk(%struct.TYPE_21__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %69
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = call i64 @expr_isnumk(%struct.TYPE_21__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = call i32 @const_num(%struct.TYPE_20__* %84, %struct.TYPE_21__* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* @BCMAX_B, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i64, i64* @BC_ADDVV, align 8
  %93 = load i64, i64* @BC_ADDNV, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load i64, i64* %12, align 8
  %96 = sub nsw i64 %95, %94
  store i64 %96, i64* %12, align 8
  br label %101

97:                                               ; preds = %83, %79, %69
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = call i32 @expr_toanyreg(%struct.TYPE_20__* %98, %struct.TYPE_21__* %99)
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %89
  br label %102

102:                                              ; preds = %101, %23
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VNONRELOC, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %113, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %108, %102
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @VNONRELOC, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %134, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %129
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %139, %129, %123
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i64 @bcemit_ABC(%struct.TYPE_20__* %145, i64 %146, i32 0, i32 %147, i32 %148)
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  store i64 %149, i64* %153, align 8
  %154 = load i64, i64* @VRELOCABLE, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %144, %18
  ret void
}

declare dso_local i64 @foldarith(i64, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @expr_toanyreg(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @expr_toval(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i64 @expr_isnumk(%struct.TYPE_21__*) #1

declare dso_local i32 @const_num(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @bcemit_ABC(%struct.TYPE_20__*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
