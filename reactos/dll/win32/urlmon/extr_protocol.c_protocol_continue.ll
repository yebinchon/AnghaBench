; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_protocol.c_protocol_continue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_protocol.c_protocol_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i32, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*, i32)* }
%struct.TYPE_14__ = type { i64 }

@BINDSTATUS_DOWNLOADINGDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Expected request to be non-NULL\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Expected IInternetProtocolSink pointer to be non-NULL\0A\00", align 1
@FLAG_ERROR = common dso_local global i32 0, align 4
@FLAG_REQUEST_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"available %u bytes\0A\00", align 1
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"InternetQueryDataAvailable failed: %d\0A\00", align 1
@INET_E_DATA_NOT_AVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @protocol_continue(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @BINDSTATUS_DOWNLOADINGDATA, align 4
  %16 = call i64 @UlongToPtr(i32 %15)
  %17 = icmp eq i64 %14, %16
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i1 [ true, %2 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @S_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %171

28:                                               ; preds = %18
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @S_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %171

36:                                               ; preds = %28
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FLAG_ERROR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load i32, i32* @FLAG_ERROR, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @PtrToUlong(i64 %58)
  %60 = call i32 %54(%struct.TYPE_13__* %55, i32 %59)
  %61 = load i32, i32* @S_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %171

62:                                               ; preds = %36
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = call i32 @write_post_stream(%struct.TYPE_13__* %68)
  store i32 %69, i32* %3, align 4
  br label %171

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = call i32 @start_downloading(%struct.TYPE_13__* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @S_OK, align 4
  store i32 %80, i32* %3, align 4
  br label %171

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %70
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @BINDSTATUS_DOWNLOADINGDATA, align 4
  %90 = call i64 @UlongToPtr(i32 %89)
  %91 = icmp sge i64 %88, %90
  br i1 %91, label %92, label %169

92:                                               ; preds = %85, %82
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %166, label %97

97:                                               ; preds = %92
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  br label %160

108:                                              ; preds = %97
  %109 = load i32, i32* @FLAG_REQUEST_COMPLETE, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = call i32 @InternetQueryDataAvailable(i32 %117, i64* %119, i32 0, i32 0)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %108
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %123
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = call i32 @all_data_read(%struct.TYPE_13__* %133)
  %135 = load i32, i32* @S_OK, align 4
  store i32 %135, i32* %3, align 4
  br label %171

136:                                              ; preds = %123
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  br label %159

142:                                              ; preds = %108
  %143 = call i64 (...) @GetLastError()
  %144 = load i64, i64* @ERROR_IO_PENDING, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load i32, i32* @FLAG_REQUEST_COMPLETE, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = call i64 (...) @GetLastError()
  %153 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %152)
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %155 = load i32, i32* @INET_E_DATA_NOT_AVAILABLE, align 4
  %156 = call i32 @report_result(%struct.TYPE_13__* %154, i32 %155)
  %157 = load i32, i32* @S_OK, align 4
  store i32 %157, i32* %3, align 4
  br label %171

158:                                              ; preds = %142
  br label %159

159:                                              ; preds = %158, %136
  br label %160

160:                                              ; preds = %159, %102
  %161 = load i32, i32* @FLAG_REQUEST_COMPLETE, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %92
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %168 = call i32 @report_data(%struct.TYPE_13__* %167)
  br label %169

169:                                              ; preds = %166, %85
  %170 = load i32, i32* @S_OK, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %146, %132, %79, %67, %43, %33, %25
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @UlongToPtr(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @PtrToUlong(i64) #1

declare dso_local i32 @write_post_stream(%struct.TYPE_13__*) #1

declare dso_local i32 @start_downloading(%struct.TYPE_13__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @InternetQueryDataAvailable(i32, i64*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @all_data_read(%struct.TYPE_13__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @report_result(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @report_data(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
