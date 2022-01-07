; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_protocol.c_protocol_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_protocol.c_protocol_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@S_FALSE = common dso_local global i64 0, align 8
@FLAG_ALL_DATA_READ = common dso_local global i32 0, align 4
@FLAG_SYNC_READ = common dso_local global i32 0, align 4
@FLAG_REQUEST_COMPLETE = common dso_local global i32 0, align 4
@E_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"InternetReadFile failed: %d\0A\00", align 1
@INET_E_DOWNLOAD_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"current_position %d, available_bytes %d\0A\00", align 1
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"InternetQueryDataAvailable failed: %d\0A\00", align 1
@INET_E_DATA_NOT_AVAILABLE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @protocol_read(%struct.TYPE_5__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i64, i64* @S_FALSE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FLAG_ALL_DATA_READ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64*, i64** %9, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @S_FALSE, align 8
  store i64 %23, i64* %5, align 8
  br label %197

24:                                               ; preds = %4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FLAG_SYNC_READ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FLAG_REQUEST_COMPLETE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %31
  %44 = load i64*, i64** %9, align 8
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* @E_PENDING, align 8
  store i64 %45, i64* %5, align 8
  br label %197

46:                                               ; preds = %38, %24
  br label %47

47:                                               ; preds = %169, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i1 [ false, %47 ], [ %55, %51 ]
  br i1 %57, label %58, label %170

58:                                               ; preds = %56
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub nsw i64 %69, %70
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %58
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub nsw i64 %74, %75
  br label %81

77:                                               ; preds = %58
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i64 [ %76, %73 ], [ %80, %77 ]
  %83 = call i32 @InternetReadFile(i32 %61, i32* %65, i64 %82, i64* %13)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = call i64 (...) @GetLastError()
  %88 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* @INET_E_DOWNLOAD_FAILURE, align 8
  store i64 %89, i64* %12, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @report_result(%struct.TYPE_5__* %90, i64 %91)
  br label %170

93:                                               ; preds = %81
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = call i32 @all_data_read(%struct.TYPE_5__* %97)
  br label %170

99:                                               ; preds = %93
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %117, i64 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %169, label %126

126:                                              ; preds = %99
  %127 = load i32, i32* @FLAG_REQUEST_COMPLETE, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = call i32 @InternetQueryDataAvailable(i32 %135, i64* %137, i32 0, i32 0)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %126
  %142 = call i64 (...) @GetLastError()
  %143 = load i64, i64* @ERROR_IO_PENDING, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i64, i64* @E_PENDING, align 8
  store i64 %146, i64* %12, align 8
  br label %154

147:                                              ; preds = %141
  %148 = call i64 (...) @GetLastError()
  %149 = call i32 @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %148)
  %150 = load i64, i64* @INET_E_DATA_NOT_AVAILABLE, align 8
  store i64 %150, i64* %12, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @report_result(%struct.TYPE_5__* %151, i64 %152)
  br label %154

154:                                              ; preds = %147, %145
  br label %170

155:                                              ; preds = %126
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %162 = call i32 @all_data_read(%struct.TYPE_5__* %161)
  br label %170

163:                                              ; preds = %155
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %163, %99
  br label %47

170:                                              ; preds = %160, %154, %96, %86, %56
  %171 = load i64, i64* %10, align 8
  %172 = load i64*, i64** %9, align 8
  store i64 %171, i64* %172, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i64, i64* @E_PENDING, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load i32, i32* @FLAG_REQUEST_COMPLETE, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %176, %170
  %183 = load i64, i64* %12, align 8
  %184 = call i64 @FAILED(i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i64, i64* %12, align 8
  store i64 %187, i64* %5, align 8
  br label %197

188:                                              ; preds = %182
  %189 = load i64, i64* %10, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i64, i64* @S_OK, align 8
  br label %195

193:                                              ; preds = %188
  %194 = load i64, i64* @S_FALSE, align 8
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i64 [ %192, %191 ], [ %194, %193 ]
  store i64 %196, i64* %5, align 8
  br label %197

197:                                              ; preds = %195, %186, %43, %21
  %198 = load i64, i64* %5, align 8
  ret i64 %198
}

declare dso_local i32 @InternetReadFile(i32, i32*, i64, i64*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @report_result(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @all_data_read(%struct.TYPE_5__*) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @InternetQueryDataAvailable(i32, i64*, i32, i32) #1

declare dso_local i64 @FAILED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
