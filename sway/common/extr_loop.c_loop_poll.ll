; ModuleID = '/home/carl/AnghaBench/sway/common/extr_loop.c_loop_poll.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_loop.c_loop_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.pollfd* }
%struct.TYPE_5__ = type { i32, %struct.loop_timer** }
%struct.loop_timer = type { i32, i32 (i32)*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.loop_fd_event** }
%struct.loop_fd_event = type { i32, i32 (i32, i32, i32)* }
%struct.pollfd = type { i32, i32, i32 }
%struct.timespec = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @loop_poll(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.loop_timer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pollfd, align 4
  %10 = alloca %struct.loop_fd_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.loop_timer*, align 8
  %15 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %2, align 8
  %16 = load i32, i32* @INT_MAX, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.loop*, %struct.loop** %2, align 8
  %18 = getelementptr inbounds %struct.loop, %struct.loop* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %1
  %24 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %25 = call i32 @clock_gettime(i32 %24, %struct.timespec* %4)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %68, %23
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.loop*, %struct.loop** %2, align 8
  %29 = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %26
  %35 = load %struct.loop*, %struct.loop** %2, align 8
  %36 = getelementptr inbounds %struct.loop, %struct.loop* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.loop_timer**, %struct.loop_timer*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.loop_timer*, %struct.loop_timer** %39, i64 %41
  %43 = load %struct.loop_timer*, %struct.loop_timer** %42, align 8
  store %struct.loop_timer* %43, %struct.loop_timer** %6, align 8
  %44 = load %struct.loop_timer*, %struct.loop_timer** %6, align 8
  %45 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %47, %49
  %51 = mul nsw i32 %50, 1000
  store i32 %51, i32* %7, align 4
  %52 = load %struct.loop_timer*, %struct.loop_timer** %6, align 8
  %53 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %55, %57
  %59 = sdiv i32 %58, 1000000
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %34
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %34
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %26

71:                                               ; preds = %26
  br label %72

72:                                               ; preds = %71, %1
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load %struct.loop*, %struct.loop** %2, align 8
  %78 = getelementptr inbounds %struct.loop, %struct.loop* %77, i32 0, i32 3
  %79 = load %struct.pollfd*, %struct.pollfd** %78, align 8
  %80 = load %struct.loop*, %struct.loop** %2, align 8
  %81 = getelementptr inbounds %struct.loop, %struct.loop* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @poll(%struct.pollfd* %79, i32 %82, i32 %83)
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %133, %76
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.loop*, %struct.loop** %2, align 8
  %88 = getelementptr inbounds %struct.loop, %struct.loop* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %136

91:                                               ; preds = %85
  %92 = load %struct.loop*, %struct.loop** %2, align 8
  %93 = getelementptr inbounds %struct.loop, %struct.loop* %92, i32 0, i32 3
  %94 = load %struct.pollfd*, %struct.pollfd** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %94, i64 %96
  %98 = bitcast %struct.pollfd* %9 to i8*
  %99 = bitcast %struct.pollfd* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 12, i1 false)
  %100 = load %struct.loop*, %struct.loop** %2, align 8
  %101 = getelementptr inbounds %struct.loop, %struct.loop* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.loop_fd_event**, %struct.loop_fd_event*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.loop_fd_event*, %struct.loop_fd_event** %104, i64 %106
  %108 = load %struct.loop_fd_event*, %struct.loop_fd_event** %107, align 8
  store %struct.loop_fd_event* %108, %struct.loop_fd_event** %10, align 8
  %109 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @POLLHUP, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @POLLERR, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %11, align 4
  %115 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %91
  %121 = load %struct.loop_fd_event*, %struct.loop_fd_event** %10, align 8
  %122 = getelementptr inbounds %struct.loop_fd_event, %struct.loop_fd_event* %121, i32 0, i32 1
  %123 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %122, align 8
  %124 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.loop_fd_event*, %struct.loop_fd_event** %10, align 8
  %129 = getelementptr inbounds %struct.loop_fd_event, %struct.loop_fd_event* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 %123(i32 %125, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %120, %91
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %85

136:                                              ; preds = %85
  %137 = load %struct.loop*, %struct.loop** %2, align 8
  %138 = getelementptr inbounds %struct.loop, %struct.loop* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %212

143:                                              ; preds = %136
  %144 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %145 = call i32 @clock_gettime(i32 %144, %struct.timespec* %12)
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %208, %143
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.loop*, %struct.loop** %2, align 8
  %149 = getelementptr inbounds %struct.loop, %struct.loop* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %147, %152
  br i1 %153, label %154, label %211

154:                                              ; preds = %146
  %155 = load %struct.loop*, %struct.loop** %2, align 8
  %156 = getelementptr inbounds %struct.loop, %struct.loop* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load %struct.loop_timer**, %struct.loop_timer*** %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.loop_timer*, %struct.loop_timer** %159, i64 %161
  %163 = load %struct.loop_timer*, %struct.loop_timer** %162, align 8
  store %struct.loop_timer* %163, %struct.loop_timer** %14, align 8
  %164 = load %struct.loop_timer*, %struct.loop_timer** %14, align 8
  %165 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %189, label %171

171:                                              ; preds = %154
  %172 = load %struct.loop_timer*, %struct.loop_timer** %14, align 8
  %173 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %171
  %180 = load %struct.loop_timer*, %struct.loop_timer** %14, align 8
  %181 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %183, %185
  br label %187

187:                                              ; preds = %179, %171
  %188 = phi i1 [ false, %171 ], [ %186, %179 ]
  br label %189

189:                                              ; preds = %187, %154
  %190 = phi i1 [ true, %154 ], [ %188, %187 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %189
  %195 = load %struct.loop_timer*, %struct.loop_timer** %14, align 8
  %196 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %195, i32 0, i32 1
  %197 = load i32 (i32)*, i32 (i32)** %196, align 8
  %198 = load %struct.loop_timer*, %struct.loop_timer** %14, align 8
  %199 = getelementptr inbounds %struct.loop_timer, %struct.loop_timer* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 %197(i32 %200)
  %202 = load %struct.loop*, %struct.loop** %2, align 8
  %203 = load %struct.loop_timer*, %struct.loop_timer** %14, align 8
  %204 = call i32 @loop_remove_timer(%struct.loop* %202, %struct.loop_timer* %203)
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %194, %189
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %146

211:                                              ; preds = %146
  br label %212

212:                                              ; preds = %211, %136
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @loop_remove_timer(%struct.loop*, %struct.loop_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
