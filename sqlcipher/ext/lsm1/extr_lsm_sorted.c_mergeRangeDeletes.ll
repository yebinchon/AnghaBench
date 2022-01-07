; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeRangeDeletes.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_mergeRangeDeletes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CURSOR_NEXT_OK = common dso_local global i32 0, align 4
@CURSOR_IGNORE_DELETE = common dso_local global i32 0, align 4
@LSM_POINT_DELETE = common dso_local global i32 0, align 4
@LSM_START_DELETE = common dso_local global i32 0, align 4
@LSM_END_DELETE = common dso_local global i32 0, align 4
@CURSOR_DATA_SEGMENT = common dso_local global i32 0, align 4
@LSM_INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i32*)* @mergeRangeDeletes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mergeRangeDeletes(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CURSOR_NEXT_OK, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CURSOR_IGNORE_DELETE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @LSM_POINT_DELETE, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* @LSM_START_DELETE, align 4
  %41 = load i32, i32* @LSM_END_DELETE, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %194

46:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %161, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @CURSOR_DATA_SEGMENT, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %164

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %160

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @multiCursorGetKey(%struct.TYPE_8__* %60, i32 %61, i32* %10, i8** %11, i32* %12)
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %159

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @rtTopic(i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @rtTopic(i32 %83)
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @sortedKeyCompare(i32 %70, i32 %74, i32 %78, i32 %82, i32 %84, i8* %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp sle i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %65
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @LSM_INSERT, align 4
  %97 = load i32, i32* @LSM_POINT_DELETE, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @LSM_INSERT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @LSM_INSERT, align 4
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32*, i32** %5, align 8
  store i32 %110, i32* %111, align 4
  br label %122

112:                                              ; preds = %101
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @LSM_POINT_DELETE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @LSM_POINT_DELETE, align 4
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %117, %112
  br label %122

122:                                              ; preds = %121, %106
  br label %123

123:                                              ; preds = %122, %94
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @LSM_END_DELETE, align 4
  %126 = load i32, i32* @LSM_START_DELETE, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %123, %65
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %131
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @LSM_END_DELETE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %135
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @LSM_INSERT, align 4
  %146 = load i32, i32* @LSM_POINT_DELETE, align 4
  %147 = or i32 %145, %146
  %148 = and i32 %144, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load i32, i32* @LSM_END_DELETE, align 4
  %152 = load i32, i32* @LSM_START_DELETE, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %157

156:                                              ; preds = %143
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %156, %150
  br label %164

158:                                              ; preds = %140, %135, %131
  br label %159

159:                                              ; preds = %158, %59
  br label %160

160:                                              ; preds = %159, %55
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %47

164:                                              ; preds = %157, %47
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @LSM_INSERT, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @LSM_POINT_DELETE, align 4
  %172 = and i32 %170, %171
  %173 = icmp eq i32 %172, 0
  br label %174

174:                                              ; preds = %169, %164
  %175 = phi i1 [ true, %164 ], [ %173, %169 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @LSM_START_DELETE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %174
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @LSM_END_DELETE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @LSM_POINT_DELETE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %192, %187, %182, %174
  br label %194

194:                                              ; preds = %193, %33
  %195 = load i32, i32* %7, align 4
  %196 = load i32*, i32** %6, align 8
  store i32 %195, i32* %196, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @multiCursorGetKey(%struct.TYPE_8__*, i32, i32*, i8**, i32*) #1

declare dso_local i32 @sortedKeyCompare(i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @rtTopic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
