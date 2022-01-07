; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_poll.c_poll.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_poll.c_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.timeval = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FD_SETSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@F_GETFD = common dso_local global i32 0, align 4
@POLLNVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = bitcast %struct.timeval* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  store i32 -1, i32* %12, align 4
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %21 = call i32 @FD_ZERO(i32* %20)
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %23 = call i32 @FD_ZERO(i32* %22)
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %25 = call i32 @FD_ZERO(i32* %24)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %91, %3
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %94

30:                                               ; preds = %26
  %31 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %32 = load i32, i32* %13, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %31, i64 %33
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %30
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @FD_SETSIZE, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @EINVAL, align 8
  store i64 %47, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %221

48:                                               ; preds = %42
  %49 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %49, i64 %51
  %53 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @POLLRDNORM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i32, i32* %14, align 4
  %60 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %61 = call i32 @FD_SET(i32 %59, i32* %60)
  br label %62

62:                                               ; preds = %58, %48
  %63 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %63, i64 %65
  %67 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @POLLWRNORM, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i32, i32* %14, align 4
  %74 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %75 = call i32 @FD_SET(i32 %73, i32* %74)
  br label %76

76:                                               ; preds = %72, %62
  %77 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %77, i64 %79
  %81 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @POLLPRI, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = load i32, i32* %14, align 4
  %88 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %89 = call i32 @FD_SET(i32 %87, i32* %88)
  br label %90

90:                                               ; preds = %86, %76
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %26

94:                                               ; preds = %26
  %95 = load i32, i32* %7, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @div(i32 %98, i32 1000)
  %100 = bitcast %struct.TYPE_3__* %15 to i64*
  store i64 %99, i64* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 1000
  %107 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %97, %94
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  %111 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %112 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %113 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %114 = load i32, i32* %7, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %118

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117, %116
  %119 = phi %struct.timeval* [ %11, %116 ], [ null, %117 ]
  %120 = call i32 @select(i32 %110, i32* %111, i32* %112, i32* %113, %struct.timeval* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %170

123:                                              ; preds = %118
  %124 = load i64, i64* @errno, align 8
  %125 = load i64, i64* @EBADF, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 -1, i32* %4, align 4
  br label %221

128:                                              ; preds = %123
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %129

129:                                              ; preds = %159, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %162

133:                                              ; preds = %129
  %134 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %135 = load i32, i32* %16, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %134, i64 %136
  %138 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @F_GETFD, align 4
  %141 = call i32 @fcntl(i32 %139, i32 %140)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %152

143:                                              ; preds = %133
  %144 = load i32, i32* @POLLNVAL, align 4
  %145 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %146 = load i32, i32* %16, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %145, i64 %147
  %149 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %148, i32 0, i32 2
  store i32 %144, i32* %149, align 4
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %158

152:                                              ; preds = %133
  %153 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %154 = load i32, i32* %16, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %153, i64 %155
  %157 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %156, i32 0, i32 2
  store i32 0, i32* %157, align 4
  br label %158

158:                                              ; preds = %152, %143
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %16, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %129

162:                                              ; preds = %129
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32, i32* %12, align 4
  br label %168

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i32 [ %166, %165 ], [ -1, %167 ]
  store i32 %169, i32* %4, align 4
  br label %221

170:                                              ; preds = %118
  store i32 0, i32* %17, align 4
  br label %171

171:                                              ; preds = %216, %170
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %219

175:                                              ; preds = %171
  %176 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %177 = load i32, i32* %17, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %176, i64 %178
  %180 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %184 = call i64 @FD_ISSET(i32 %182, i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %175
  %187 = load i32, i32* @POLLRDNORM, align 4
  br label %189

188:                                              ; preds = %175
  br label %189

189:                                              ; preds = %188, %186
  %190 = phi i32 [ %187, %186 ], [ 0, %188 ]
  %191 = load i32, i32* %18, align 4
  %192 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %193 = call i64 @FD_ISSET(i32 %191, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i32, i32* @POLLWRNORM, align 4
  br label %198

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %197, %195
  %199 = phi i32 [ %196, %195 ], [ 0, %197 ]
  %200 = or i32 %190, %199
  %201 = load i32, i32* %18, align 4
  %202 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %203 = call i64 @FD_ISSET(i32 %201, i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = load i32, i32* @POLLPRI, align 4
  br label %208

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207, %205
  %209 = phi i32 [ %206, %205 ], [ 0, %207 ]
  %210 = or i32 %200, %209
  %211 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %212 = load i32, i32* %17, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %211, i64 %213
  %215 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %214, i32 0, i32 2
  store i32 %210, i32* %215, align 4
  br label %216

216:                                              ; preds = %208
  %217 = load i32, i32* %17, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %17, align 4
  br label %171

219:                                              ; preds = %171
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %219, %168, %127, %46
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i64 @div(i32, i32) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i32 @fcntl(i32, i32) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
