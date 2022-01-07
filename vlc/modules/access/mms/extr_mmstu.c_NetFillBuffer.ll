; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_NetFillBuffer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_mmstu.c_NetFillBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i64, i32, i32 }
%struct.pollfd = type { i64, i8*, i32 }

@MMS_BUFFER_SIZE = common dso_local global i32 0, align 4
@MMS_PROTO_UDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"nothing to read %d:%d\00", align 1
@POLLIN = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"no data received\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"network poll error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @NetFillBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NetFillBuffer(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.pollfd], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @MMS_BUFFER_SIZE, align 4
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MMS_PROTO_UDP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = load i32, i32* @MMS_BUFFER_SIZE, align 4
  %33 = sdiv i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %10, align 8
  br label %40

39:                                               ; preds = %1
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i64, i64* %10, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i64, i64* %9, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @msg_Warn(%struct.TYPE_7__* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51)
  store i32 0, i32* %2, align 4
  br label %211

53:                                               ; preds = %43, %40
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %9, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %63, i32 0, i32 2
  store i32 %60, i32* %64, align 8
  %65 = load i8*, i8** @POLLIN, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %68, i32 0, i32 1
  store i8* %65, i8** %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %57, %54
  %73 = load i64, i64* %10, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 8
  %83 = load i8*, i8** @POLLIN, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %86, i32 0, i32 1
  store i8* %83, i8** %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %75, %72
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %90
  store i32 2000, i32* %7, align 4
  br label %101

101:                                              ; preds = %100, %95
  br label %102

102:                                              ; preds = %118, %101
  %103 = call i64 (...) @vlc_killed()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 -1, i32* %2, align 4
  br label %211

106:                                              ; preds = %102
  %107 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @vlc_poll_i11e(%struct.pollfd* %107, i32 %108, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %106
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i64, i64* @errno, align 8
  %116 = load i64, i64* @EINTR, align 8
  %117 = icmp eq i64 %115, %116
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i1 [ false, %111 ], [ %117, %114 ]
  br i1 %119, label %102, label %120

120:                                              ; preds = %118
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %125 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %211

126:                                              ; preds = %120
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = load i64, i64* @errno, align 8
  %132 = call i32 @vlc_strerror_c(i64 %131)
  %133 = call i32 (%struct.TYPE_7__*, i8*, ...) @msg_Err(%struct.TYPE_7__* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  store i32 -1, i32* %2, align 4
  br label %211

134:                                              ; preds = %126
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  %135 = load i64, i64* %9, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %134
  %138 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 0
  %139 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 16
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %137
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %148, %151
  %153 = load i64, i64* %9, align 8
  %154 = load i32, i32* @MMS_BUFFER_SIZE, align 4
  %155 = sdiv i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %153, %156
  %158 = call i64 @recv(i32 %145, i64 %152, i64 %157, i32 0)
  store i64 %158, i64* %11, align 8
  br label %159

159:                                              ; preds = %142, %137, %134
  %160 = load i64, i64* %10, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %159
  %163 = load i64, i64* %9, align 8
  %164 = icmp sgt i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %6, i64 0, i64 %166
  %168 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %162
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = load i64, i64* %10, align 8
  %183 = load i32, i32* @MMS_BUFFER_SIZE, align 4
  %184 = sdiv i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %182, %185
  %187 = call i64 @recv(i32 %174, i64 %181, i64 %186, i32 0)
  store i64 %187, i64* %12, align 8
  br label %188

188:                                              ; preds = %171, %162, %159
  %189 = load i64, i64* %11, align 8
  %190 = icmp sgt i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load i64, i64* %11, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %195, %192
  store i64 %196, i64* %194, align 8
  br label %197

197:                                              ; preds = %191, %188
  %198 = load i64, i64* %12, align 8
  %199 = icmp sgt i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %197
  %201 = load i64, i64* %12, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %204, %201
  store i64 %205, i64* %203, align 8
  br label %206

206:                                              ; preds = %200, %197
  %207 = load i64, i64* %11, align 8
  %208 = load i64, i64* %12, align 8
  %209 = add nsw i64 %207, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %206, %129, %123, %105, %46
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @msg_Warn(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i64 @vlc_killed(...) #1

declare dso_local i32 @vlc_poll_i11e(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i64 @recv(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
