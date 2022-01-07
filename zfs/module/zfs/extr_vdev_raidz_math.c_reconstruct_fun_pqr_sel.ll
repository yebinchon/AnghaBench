; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math.c_reconstruct_fun_pqr_sel.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math.c_reconstruct_fun_pqr_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@CODE_P = common dso_local global i64 0, align 8
@RAIDZ_REC_P = common dso_local global i64 0, align 8
@CODE_Q = common dso_local global i64 0, align 8
@RAIDZ_REC_Q = common dso_local global i64 0, align 8
@CODE_R = common dso_local global i64 0, align 8
@RAIDZ_REC_R = common dso_local global i64 0, align 8
@RAIDZ_REC_PQ = common dso_local global i64 0, align 8
@RAIDZ_REC_PR = common dso_local global i64 0, align 8
@RAIDZ_REC_QR = common dso_local global i64 0, align 8
@RAIDZ_REC_PQR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @reconstruct_fun_pqr_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconstruct_fun_pqr_sel(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %58

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* @CODE_P, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @RAIDZ_REC_P, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %160

25:                                               ; preds = %10
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* @CODE_Q, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @RAIDZ_REC_Q, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  br label %160

40:                                               ; preds = %25
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* @CODE_R, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @RAIDZ_REC_R, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %4, align 4
  br label %160

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %159

58:                                               ; preds = %3
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %127

61:                                               ; preds = %58
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* @CODE_P, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load i32*, i32** %6, align 8
  %69 = load i64, i64* @CODE_Q, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @RAIDZ_REC_PQ, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %4, align 4
  br label %160

82:                                               ; preds = %67, %61
  %83 = load i32*, i32** %6, align 8
  %84 = load i64, i64* @CODE_P, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* @CODE_R, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @RAIDZ_REC_PR, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %4, align 4
  br label %160

103:                                              ; preds = %88, %82
  %104 = load i32*, i32** %6, align 8
  %105 = load i64, i64* @CODE_Q, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load i32*, i32** %6, align 8
  %111 = load i64, i64* @CODE_R, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @RAIDZ_REC_QR, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %4, align 4
  br label %160

124:                                              ; preds = %109, %103
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %158

127:                                              ; preds = %58
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %130, label %157

130:                                              ; preds = %127
  %131 = load i32*, i32** %6, align 8
  %132 = load i64, i64* @CODE_P, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %157

136:                                              ; preds = %130
  %137 = load i32*, i32** %6, align 8
  %138 = load i64, i64* @CODE_Q, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load i32*, i32** %6, align 8
  %144 = load i64, i64* @CODE_R, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @RAIDZ_REC_PQR, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %4, align 4
  br label %160

157:                                              ; preds = %142, %136, %130, %127
  br label %158

158:                                              ; preds = %157, %126
  br label %159

159:                                              ; preds = %158, %57
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %148, %115, %94, %73, %46, %31, %16
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
