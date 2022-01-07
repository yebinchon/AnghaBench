; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_get_transform_record.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_msi_get_transform_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"row ->\0A\00", align 1
@MSITYPE_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c" field %d [%s]\0A\00", align 1
@MSITYPE_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c" field %d [0x%04x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c" field %d [0x%08x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"oops - unknown column width %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_13__*, i32*, i32*, i32*, i32)* @msi_get_transform_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @msi_get_transform_record(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %16, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %29, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %36, i32** %10, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_14__* @MSI_CreateRecord(i32 %39)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %17, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %42 = icmp ne %struct.TYPE_14__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %5
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %6, align 8
  br label %245

45:                                               ; preds = %5
  %46 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %240, %45
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %243

53:                                               ; preds = %47
  %54 = load i32, i32* %15, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %15, align 4
  %60 = ashr i32 %59, 8
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %243

63:                                               ; preds = %57, %53
  %64 = load i32, i32* %15, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* @MSITYPE_KEY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load i32, i32* %12, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* %15, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %240

87:                                               ; preds = %79, %68, %63
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @MSITYPE_IS_BINARY(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %149

98:                                               ; preds = %87
  store i32* null, i32** %19, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i64 %104
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @bytes_per_column(i32 %101, %struct.TYPE_15__* %105, i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %14, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %112 = call i32 @msi_record_encoded_stream_name(%struct.TYPE_13__* %110, %struct.TYPE_14__* %111, i32* %18)
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load i32, i32* @ERROR_SUCCESS, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %98
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = call i32 @msiobj_release(i32* %118)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %245

120:                                              ; preds = %98
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* @STGM_READ, align 4
  %124 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @IStorage_OpenStream(i32* %121, i32 %122, i32* null, i32 %125, i32 0, i32** %19)
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* @ERROR_SUCCESS, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %120
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = call i32 @msiobj_release(i32* %132)
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @msi_free(i32 %134)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  br label %245

136:                                              ; preds = %120
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32*, i32** %19, align 8
  %141 = call i32 @MSI_RecordSetStream(%struct.TYPE_14__* %137, i32 %139, i32* %140)
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @debugstr_w(i32 %144)
  %146 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %145)
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @msi_free(i32 %147)
  br label %239

149:                                              ; preds = %87
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MSITYPE_STRING, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %182

159:                                              ; preds = %149
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @read_raw_int(i32* %160, i32 %161, i32 %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %13, align 4
  %166 = call i32* @msi_string_lookup(i32* %164, i32 %165, i32* %21)
  store i32* %166, i32** %22, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  %170 = load i32*, i32** %22, align 8
  %171 = load i32, i32* %21, align 4
  %172 = call i32 @msi_record_set_string(%struct.TYPE_14__* %167, i32 %169, i32* %170, i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  %175 = load i32*, i32** %22, align 8
  %176 = load i32, i32* %21, align 4
  %177 = call i32 @debugstr_wn(i32* %175, i32 %176)
  %178 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %174, i32 %177)
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %14, align 4
  br label %238

182:                                              ; preds = %149
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i64 %188
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @bytes_per_column(i32 %185, %struct.TYPE_15__* %189, i32 %190)
  store i32 %191, i32* %23, align 4
  %192 = load i32, i32* %23, align 4
  switch i32 %192, label %231 [
    i32 2, label %193
    i32 4, label %212
  ]

193:                                              ; preds = %182
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %23, align 4
  %197 = call i32 @read_raw_int(i32* %194, i32 %195, i32 %196)
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %13, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %193
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %13, align 4
  %205 = sub nsw i32 %204, 32768
  %206 = call i32 @MSI_RecordSetInteger(%struct.TYPE_14__* %201, i32 %203, i32 %205)
  br label %207

207:                                              ; preds = %200, %193
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  %210 = load i32, i32* %13, align 4
  %211 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %209, i32 %210)
  br label %234

212:                                              ; preds = %182
  %213 = load i32*, i32** %10, align 8
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %23, align 4
  %216 = call i32 @read_raw_int(i32* %213, i32 %214, i32 %215)
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %13, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %212
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  %223 = load i32, i32* %13, align 4
  %224 = xor i32 %223, -2147483648
  %225 = call i32 @MSI_RecordSetInteger(%struct.TYPE_14__* %220, i32 %222, i32 %224)
  br label %226

226:                                              ; preds = %219, %212
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  %229 = load i32, i32* %13, align 4
  %230 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %228, i32 %229)
  br label %234

231:                                              ; preds = %182
  %232 = load i32, i32* %23, align 4
  %233 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %231, %226, %207
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %234, %159
  br label %239

239:                                              ; preds = %238, %136
  br label %240

240:                                              ; preds = %239, %86
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  br label %47

243:                                              ; preds = %62, %47
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %244, %struct.TYPE_14__** %6, align 8
  br label %245

245:                                              ; preds = %243, %130, %116, %43
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %246
}

declare dso_local %struct.TYPE_14__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @MSITYPE_IS_BINARY(i32) #1

declare dso_local i32 @bytes_per_column(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @msi_record_encoded_stream_name(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @IStorage_OpenStream(i32*, i32, i32*, i32, i32, i32**) #1

declare dso_local i32 @msi_free(i32) #1

declare dso_local i32 @MSI_RecordSetStream(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @read_raw_int(i32*, i32, i32) #1

declare dso_local i32* @msi_string_lookup(i32*, i32, i32*) #1

declare dso_local i32 @msi_record_set_string(%struct.TYPE_14__*, i32, i32*, i32) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
