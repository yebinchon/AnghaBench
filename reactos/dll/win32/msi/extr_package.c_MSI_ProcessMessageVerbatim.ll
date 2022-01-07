; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_MSI_ProcessMessageVerbatim.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_MSI_ProcessMessageVerbatim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@msi = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@ERROR_OUTOFMEMORY = common dso_local global i64 0, align 8
@CP_ACP = common dso_local global i32 0, align 4
@gUIFilterRecord = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Calling UI handler %p(pvContext=%p, iMessageType=%08x, hRecord=%u)\0A\00", align 1
@gUIContextRecord = common dso_local global i32 0, align 4
@gUIFilter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"Calling UI handler %p(pvContext=%p, iMessageType=%08x, szMessage=%s)\0A\00", align 1
@gUIContext = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@INSTALLMESSAGE_PROGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MSI_ProcessMessageVerbatim(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i8* null, i8** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 24
  %18 = shl i32 1, %17
  store i32 %18, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @msi, align 4
  %22 = call i64 @TRACE_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = call i32 @dump_record(%struct.TYPE_10__* %25)
  br label %27

27:                                               ; preds = %24, %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %27
  store i8* null, i8** %8, align 8
  br label %65

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @MSI_FormatRecordW(%struct.TYPE_11__* %35, %struct.TYPE_10__* %36, i8* %37, i32* %9)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @ERROR_MORE_DATA, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* %11, align 8
  store i64 %47, i64* %4, align 8
  br label %178

48:                                               ; preds = %42, %34
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i8* @msi_alloc(i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = load i64, i64* @ERROR_OUTOFMEMORY, align 8
  store i64 %59, i64* %4, align 8
  br label %178

60:                                               ; preds = %48
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @MSI_FormatRecordW(%struct.TYPE_11__* %61, %struct.TYPE_10__* %62, i8* %63, i32* %9)
  br label %65

65:                                               ; preds = %60, %33
  %66 = load i32, i32* @CP_ACP, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @WideCharToMultiByte(i32 %66, i32 0, i8* %67, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @msi_alloc(i32 %69)
  store i8* %70, i8** %13, align 8
  %71 = load i32, i32* @CP_ACP, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @WideCharToMultiByte(i32 %71, i32 0, i8* %72, i32 -1, i8* %73, i32 %74, i32* null, i32* null)
  br i1 true, label %76, label %95

76:                                               ; preds = %65
  %77 = load i32, i32* @gUIFilterRecord, align 4
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = call i8* @alloc_msihandle(i32* %83)
  store i8* %84, i8** %14, align 8
  %85 = load i32, i32* @gUIContextRecord, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 (i32, i32, i8*)* @gUIHandlerRecord, i32 %85, i32 %86, i8* %87)
  %89 = load i32, i32* @gUIContextRecord, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = call i64 @gUIHandlerRecord(i32 %89, i32 %90, i8* %91)
  store i64 %92, i64* %12, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @MsiCloseHandle(i8* %93)
  br label %95

95:                                               ; preds = %81, %76, %65
  %96 = load i64, i64* %12, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  br i1 true, label %99, label %114

99:                                               ; preds = %98
  %100 = load i32, i32* @gUIFilter, align 4
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* @gUIContext, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = call i8* @debugstr_w(i8* %107)
  %109 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 (i32, i32, i8*)* @gUIHandlerW, i32 %105, i32 %106, i8* %108)
  %110 = load i32, i32* @gUIContext, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = call i64 @gUIHandlerW(i32 %110, i32 %111, i8* %112)
  store i64 %113, i64* %12, align 8
  br label %134

114:                                              ; preds = %99, %98, %95
  %115 = load i64, i64* %12, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %133, label %117

117:                                              ; preds = %114
  br i1 true, label %118, label %133

118:                                              ; preds = %117
  %119 = load i32, i32* @gUIFilter, align 4
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load i32, i32* @gUIContext, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i8*, i8** %13, align 8
  %127 = call i8* @debugstr_a(i8* %126)
  %128 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 (i32, i32, i8*)* @gUIHandlerA, i32 %124, i32 %125, i8* %127)
  %129 = load i32, i32* @gUIContext, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i8*, i8** %13, align 8
  %132 = call i64 @gUIHandlerA(i32 %129, i32 %130, i8* %131)
  store i64 %132, i64* %12, align 8
  br label %133

133:                                              ; preds = %123, %118, %117, %114
  br label %134

134:                                              ; preds = %133, %104
  %135 = load i64, i64* %12, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = call i64 @internal_ui_handler(%struct.TYPE_11__* %138, i32 %139, %struct.TYPE_10__* %140, i8* %141)
  store i64 %142, i64* %12, align 8
  br label %143

143:                                              ; preds = %137, %134
  %144 = load i64, i64* %12, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %172, label %146

146:                                              ; preds = %143
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = icmp ne %struct.TYPE_11__* %147, null
  br i1 %148, label %149, label %172

149:                                              ; preds = %146
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %149
  %156 = load i32, i32* %6, align 4
  %157 = and i32 %156, -16777216
  %158 = load i32, i32* @INSTALLMESSAGE_PROGRESS, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i8*, i8** %13, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sub nsw i32 %165, 1
  %167 = call i32 @WriteFile(i64 %163, i8* %164, i32 %166, i32* %15, i32* null)
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @WriteFile(i64 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i32* %15, i32* null)
  br label %172

172:                                              ; preds = %160, %155, %149, %146, %143
  %173 = load i8*, i8** %13, align 8
  %174 = call i32 @msi_free(i8* %173)
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 @msi_free(i8* %175)
  %177 = load i64, i64* %12, align 8
  store i64 %177, i64* %4, align 8
  br label %178

178:                                              ; preds = %172, %58, %46
  %179 = load i64, i64* %4, align 8
  ret i64 %179
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @dump_record(%struct.TYPE_10__*) #1

declare dso_local i64 @MSI_FormatRecordW(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, i32*) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i64 @gUIHandlerRecord(i32, i32, i8*) #1

declare dso_local i8* @alloc_msihandle(i32*) #1

declare dso_local i32 @MsiCloseHandle(i8*) #1

declare dso_local i64 @gUIHandlerW(i32, i32, i8*) #1

declare dso_local i8* @debugstr_w(i8*) #1

declare dso_local i64 @gUIHandlerA(i32, i32, i8*) #1

declare dso_local i8* @debugstr_a(i8*) #1

declare dso_local i64 @internal_ui_handler(%struct.TYPE_11__*, i32, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @msi_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
