; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchGetSignature.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearchGetSignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i8*, i8*, i32, i32, i8* }
%struct.TYPE_12__ = type { i32 }

@ACTION_AppSearchGetSignature.query = internal constant [47 x i8] c"select * from Signature where Signature = '%s'\00", align 16
@.str = private unnamed_addr constant [20 x i8] c"package %p, sig %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to query signature for %s\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@MSI_NULL_INTEGER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Found file name %s for Signature_ %s;\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"MinVersion is %d.%d.%d.%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"MaxVersion is %d.%d.%d.%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"MinSize is %d, MaxSize is %d;\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Languages is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, i8*)* @ACTION_AppSearchGetSignature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ACTION_AppSearchGetSignature(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %13, %struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = call i32 @memset(%struct.TYPE_11__* %16, i32 0, i32 80)
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 10
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.TYPE_12__* @MSI_QueryGetRecord(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @ACTION_AppSearchGetSignature.query, i64 0, i64 0), i8* %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %11, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @debugstr_w(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_13__*
  %33 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %32)
  %34 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %34, i32* %4, align 4
  br label %212

35:                                               ; preds = %3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %37 = call i8* @msi_dup_record_field(%struct.TYPE_12__* %36, i32 2)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 7
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strchrW(i8* %42, i8 signext 124)
  store i8* %43, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 7
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @strlenW(i8* %52)
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 1
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memmove(i8* %50, i8* %51, i32 %57)
  br label %59

59:                                               ; preds = %45, %35
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = call i8* @msi_dup_record_field(%struct.TYPE_12__* %60, i32 3)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = call i32 @msi_parse_version_string(i8* %65, i64* %67, i64* %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @msi_free(i8* %71)
  br label %73

73:                                               ; preds = %64, %59
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = call i8* @msi_dup_record_field(%struct.TYPE_12__* %74, i32 4)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i8*, i8** %9, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = call i32 @msi_parse_version_string(i8* %79, i64* %81, i64* %83)
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @msi_free(i8* %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %89 = call i64 @MSI_RecordGetInteger(%struct.TYPE_12__* %88, i32 5)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MSI_NULL_INTEGER, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 4
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %87
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = call i64 @MSI_RecordGetInteger(%struct.TYPE_12__* %101, i32 6)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MSI_NULL_INTEGER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 5
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %100
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %115 = call i8* @msi_dup_record_field(%struct.TYPE_12__* %114, i32 9)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %119 = call i64 @MSI_RecordGetInteger(%struct.TYPE_12__* %118, i32 7)
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* @MSI_NULL_INTEGER, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %113
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @HIWORD(i64 %124)
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @LOWORD(i64 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 9
  %130 = call i32 @DosDateTimeToFileTime(i32 %125, i32 %127, i32* %129)
  br label %131

131:                                              ; preds = %123, %113
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %133 = call i64 @MSI_RecordGetInteger(%struct.TYPE_12__* %132, i32 8)
  store i64 %133, i64* %12, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* @MSI_NULL_INTEGER, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @HIWORD(i64 %138)
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @LOWORD(i64 %140)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 8
  %144 = call i32 @DosDateTimeToFileTime(i32 %139, i32 %141, i32* %143)
  br label %145

145:                                              ; preds = %137, %131
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 7
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @debugstr_w(i8* %148)
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to %struct.TYPE_13__*
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @debugstr_w(i8* %152)
  %154 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %151, i32 %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @HIWORD(i64 %157)
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to %struct.TYPE_13__*
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @LOWORD(i64 %163)
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @HIWORD(i64 %167)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @LOWORD(i64 %171)
  %173 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_13__* %160, i32 %164, i32 %168, i32 %172)
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @HIWORD(i64 %176)
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to %struct.TYPE_13__*
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @LOWORD(i64 %182)
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @HIWORD(i64 %186)
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @LOWORD(i64 %190)
  %192 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_13__* %179, i32 %183, i32 %187, i32 %191)
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to %struct.TYPE_13__*
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_13__* %196, i64 %199)
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 6
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @debugstr_w(i8* %203)
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to %struct.TYPE_13__*
  %207 = call i32 (i8*, %struct.TYPE_13__*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_13__* %206)
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = call i32 @msiobj_release(i32* %209)
  %211 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %145, %28
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_13__*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @MSI_QueryGetRecord(i32, i8*, i8*) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i8* @msi_dup_record_field(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @msi_parse_version_string(i8*, i64*, i64*) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i64 @MSI_RecordGetInteger(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DosDateTimeToFileTime(i32, i32, i32*) #1

declare dso_local i32 @HIWORD(i64) #1

declare dso_local i32 @LOWORD(i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
