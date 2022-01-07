; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterAdvanceRowid.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5MultiIterAdvanceRowid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@SMALLEST_INT64 = common dso_local global i64 0, align 8
@LARGEST_INT64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, %struct.TYPE_6__**)* @fts5MultiIterAdvanceRowid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5MultiIterAdvanceRowid(%struct.TYPE_7__* %0, i32 %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %8, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %176

38:                                               ; preds = %25, %3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = xor i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %44
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %10, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i64, i64* @SMALLEST_INT64, align 8
  br label %54

52:                                               ; preds = %38
  %53 = load i64, i64* @LARGEST_INT64, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %60, %61
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %172, %54
  br i1 true, label %65, label %175

65:                                               ; preds = %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %11, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %65
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %80, %65
  %86 = phi i1 [ true, %65 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %144

93:                                               ; preds = %85
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 1, i32* %4, align 4
  br label %179

102:                                              ; preds = %93
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %105, %108
  %110 = zext i1 %109 to i32
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %102
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %121, %struct.TYPE_6__** %8, align 8
  br label %142

122:                                              ; preds = %102
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %125, %128
  %130 = zext i1 %129 to i32
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %122
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %135, %122
  br label %142

142:                                              ; preds = %141, %115
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %85
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = ptrtoint %struct.TYPE_6__* %145 to i64
  %150 = ptrtoint %struct.TYPE_6__* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 16
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  br label %175

158:                                              ; preds = %144
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = xor i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %170
  store %struct.TYPE_6__* %171, %struct.TYPE_6__** %10, align 8
  br label %172

172:                                              ; preds = %158
  %173 = load i32, i32* %9, align 4
  %174 = sdiv i32 %173, 2
  store i32 %174, i32* %9, align 4
  br label %64

175:                                              ; preds = %157, %64
  br label %176

176:                                              ; preds = %175, %25
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %178 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %177, %struct.TYPE_6__** %178, align 8
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %176, %101
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
