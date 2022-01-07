; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_set_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_set_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64* }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@MSICONDITION_FALSE = common dso_local global i64 0, align 8
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@MSITYPE_STRING = common dso_local global i32 0, align 4
@StringPersistent = common dso_local global i32 0, align 4
@StringNonPersistent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32, i32*, i32)* @TABLE_set_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TABLE_set_row(%struct.tagMSIVIEW* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %21 = bitcast %struct.tagMSIVIEW* %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %10, align 8
  %22 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %28, i32* %5, align 4
  br label %215

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  %35 = icmp sge i32 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %37, i32* %5, align 4
  br label %215

38:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %210, %38
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %213

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %210

52:                                               ; preds = %45
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MSICONDITION_FALSE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %60, %52
  %72 = phi i1 [ false, %52 ], [ %70, %60 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %14, align 4
  store i32 0, i32* %12, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i32 @MSI_RecordIsNull(i32* %74, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %198, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  %84 = call i32 @get_table_value_from_record(%struct.TYPE_10__* %80, i32* %81, i32 %83, i32* %12)
  store i32 %84, i32* %13, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @MSITYPE_IS_BINARY(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %139

95:                                               ; preds = %79
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @ERROR_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %100, i32* %5, align 4
  br label %215

101:                                              ; preds = %95
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @MSI_RecordGetIStream(i32* %102, i32 %104, i32** %15)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @ERROR_SUCCESS, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %5, align 4
  br label %215

111:                                              ; preds = %101
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @get_stream_name(%struct.TYPE_10__* %112, i32 %113, i32* %16)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @ERROR_SUCCESS, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @IStream_Release(i32* %119)
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %5, align 4
  br label %215

122:                                              ; preds = %111
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load i32*, i32** %15, align 8
  %128 = call i32 @add_stream(%struct.TYPE_11__* %125, i32 %126, i32* %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32*, i32** %15, align 8
  %130 = call i32 @IStream_Release(i32* %129)
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @msi_free(i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @ERROR_SUCCESS, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %122
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %5, align 4
  br label %215

138:                                              ; preds = %122
  br label %197

139:                                              ; preds = %79
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MSITYPE_STRING, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %189

151:                                              ; preds = %139
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @ERROR_SUCCESS, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %176

155:                                              ; preds = %151
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  %159 = call i32* @msi_record_get_string(i32* %156, i32 %158, i32* %18)
  store i32* %159, i32** %19, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %19, align 8
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %155
  %170 = load i32, i32* @StringPersistent, align 4
  br label %173

171:                                              ; preds = %155
  %172 = load i32, i32* @StringNonPersistent, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = call i32 @msi_add_string(i32 %164, i32* %165, i32 %166, i32 %174)
  store i32 %175, i32* %12, align 4
  br label %188

176:                                              ; preds = %151
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i32 @TABLE_fetch_int(i32* %178, i32 %179, i32 %181, i32* %17)
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %17, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %210

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187, %173
  br label %196

189:                                              ; preds = %139
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @ERROR_SUCCESS, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %194, i32* %5, align 4
  br label %215

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %195, %188
  br label %197

197:                                              ; preds = %196, %138
  br label %198

198:                                              ; preds = %197, %71
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %201, 1
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @TABLE_set_int(%struct.TYPE_10__* %199, i32 %200, i32 %202, i32 %203)
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @ERROR_SUCCESS, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %198
  br label %213

209:                                              ; preds = %198
  br label %210

210:                                              ; preds = %209, %186, %51
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %11, align 4
  br label %39

213:                                              ; preds = %208, %39
  %214 = load i32, i32* %13, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %213, %193, %136, %118, %109, %99, %36, %27
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @MSI_RecordIsNull(i32*, i32) #1

declare dso_local i32 @get_table_value_from_record(%struct.TYPE_10__*, i32*, i32, i32*) #1

declare dso_local i64 @MSITYPE_IS_BINARY(i32) #1

declare dso_local i32 @MSI_RecordGetIStream(i32*, i32, i32**) #1

declare dso_local i32 @get_stream_name(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @add_stream(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @msi_free(i32) #1

declare dso_local i32* @msi_record_get_string(i32*, i32, i32*) #1

declare dso_local i32 @msi_add_string(i32, i32*, i32, i32) #1

declare dso_local i32 @TABLE_fetch_int(i32*, i32, i32, i32*) #1

declare dso_local i32 @TABLE_set_int(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
