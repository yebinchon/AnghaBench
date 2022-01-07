; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_rtp.c_rtp_send_data.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_rtp.c_rtp_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }
%struct.RTPHeader = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"No session!\00", align 1
@MAX_CRYPTO_DATA_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"RTP send failed (len: %d)! std error: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtp_send_data(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.RTPHeader*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @LOGGER_WARNING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %181

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, 80
  %20 = add i64 %19, 1
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = mul nuw i64 4, %20
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(i32* %22, i32 0, i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %28, i32* %29, align 16
  %30 = getelementptr inbounds i32, i32* %22, i64 1
  %31 = bitcast i32* %30 to %struct.RTPHeader*
  store %struct.RTPHeader* %31, %struct.RTPHeader** %10, align 8
  %32 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %33 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %32, i32 0, i32 0
  store i32 2, i32* %33, align 8
  %34 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %35 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %34, i32 0, i32 10
  store i64 0, i64* %35, align 8
  %36 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %37 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %36, i32 0, i32 9
  store i64 0, i64* %37, align 8
  %38 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %39 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %41 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = srem i32 %44, 128
  %46 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %47 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @htons(i64 %50)
  %52 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %53 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = call i32 (...) @current_time_monotonic()
  %55 = call i8* @htonl(i32 %54)
  %56 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %57 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @htonl(i32 %60)
  %62 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %63 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %65 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %64, i32 0, i32 2
  store i8* null, i8** %65, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i8* @htons(i64 %66)
  %68 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %69 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* @MAX_CRYPTO_DATA_SIZE, align 8
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 80
  %73 = add i64 %72, 1
  %74 = icmp ugt i64 %70, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %17
  %76 = getelementptr inbounds i32, i32* %22, i64 1
  %77 = getelementptr inbounds i32, i32* %76, i64 80
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @memcpy(i32* %77, i32* %78, i64 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = mul nuw i64 4, %20
  %88 = call i32 @send_custom_lossy_packet(i32 %83, i32 %86, i32* %22, i64 %87)
  %89 = icmp eq i32 -1, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %75
  %91 = mul nuw i64 4, %20
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @strerror(i32 %92)
  %94 = call i32 (i8*, ...) @LOGGER_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %91, i32 %93)
  br label %95

95:                                               ; preds = %90, %75
  br label %175

96:                                               ; preds = %17
  store i64 0, i64* %11, align 8
  %97 = load i64, i64* @MAX_CRYPTO_DATA_SIZE, align 8
  %98 = sub i64 %97, 81
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %133, %96
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub nsw i64 %100, %101
  %103 = add i64 %102, 80
  %104 = add i64 %103, 1
  %105 = load i64, i64* @MAX_CRYPTO_DATA_SIZE, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %99
  %108 = getelementptr inbounds i32, i32* %22, i64 1
  %109 = getelementptr inbounds i32, i32* %108, i64 80
  %110 = load i32*, i32** %6, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @memcpy(i32* %109, i32* %112, i64 %113)
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, 80
  %123 = add i64 %122, 1
  %124 = call i32 @send_custom_lossy_packet(i32 %117, i32 %120, i32* %22, i64 %123)
  %125 = icmp eq i32 -1, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %107
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 80
  %129 = add i64 %128, 1
  %130 = load i32, i32* @errno, align 4
  %131 = call i32 @strerror(i32 %130)
  %132 = call i32 (i8*, ...) @LOGGER_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %129, i32 %131)
  br label %133

133:                                              ; preds = %126, %107
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %11, align 8
  %138 = call i8* @htons(i64 %137)
  %139 = load %struct.RTPHeader*, %struct.RTPHeader** %10, align 8
  %140 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  br label %99

141:                                              ; preds = %99
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %11, align 8
  %144 = sub nsw i64 %142, %143
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %12, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %174

147:                                              ; preds = %141
  %148 = getelementptr inbounds i32, i32* %22, i64 1
  %149 = getelementptr inbounds i32, i32* %148, i64 80
  %150 = load i32*, i32** %6, align 8
  %151 = load i64, i64* %11, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @memcpy(i32* %149, i32* %152, i64 %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* %12, align 8
  %162 = add i64 %161, 80
  %163 = add i64 %162, 1
  %164 = call i32 @send_custom_lossy_packet(i32 %157, i32 %160, i32* %22, i64 %163)
  %165 = icmp eq i32 -1, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %147
  %167 = load i64, i64* %12, align 8
  %168 = add i64 %167, 80
  %169 = add i64 %168, 1
  %170 = load i32, i32* @errno, align 4
  %171 = call i32 @strerror(i32 %170)
  %172 = call i32 (i8*, ...) @LOGGER_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %169, i32 %171)
  br label %173

173:                                              ; preds = %166, %147
  br label %174

174:                                              ; preds = %173, %141
  br label %175

175:                                              ; preds = %174, %95
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8
  store i32 0, i32* %4, align 4
  %180 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %180)
  br label %181

181:                                              ; preds = %175, %15
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @LOGGER_WARNING(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @current_time_monotonic(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @send_custom_lossy_packet(i32, i32, i32*, i64) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
