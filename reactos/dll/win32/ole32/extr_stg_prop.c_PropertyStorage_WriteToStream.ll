; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stg_prop.c_PropertyStorage_WriteToStream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stg_prop.c_PropertyStorage_WriteToStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { i64, i32 }

@LOCALE_SYSTEM_DEFAULT = common dso_local global i64 0, align 8
@PROPSETFLAG_CASE_SENSITIVE = common dso_local global i32 0, align 4
@SECTIONHEADER_OFFSET = common dso_local global i8* null, align 8
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@VT_I2 = common dso_local global i8* null, align 8
@PID_CODEPAGE = common dso_local global i32 0, align 4
@VT_I4 = common dso_local global i8* null, align 8
@PID_LOCALE = common dso_local global i32 0, align 4
@PID_BEHAVIOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @PropertyStorage_WriteToStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PropertyStorage_WriteToStream(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = call i32 @PropertyStorage_WriteHeadersToStream(%struct.TYPE_14__* %12)
  store i32 1, i32* %7, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @dictionary_num_entries(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LOCALE_SYSTEM_DEFAULT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PROPSETFLAG_CASE_SENSITIVE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @dictionary_num_entries(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @PropertyStorage_MakeSectionHdr(i32 0, i32 %50, i32* %3)
  %52 = load i8*, i8** @SECTIONHEADER_OFFSET, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @STREAM_SEEK_SET, align 4
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @IStream_Seek(i32 %56, i8* %59, i32 %57, i32* null)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @FAILED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %41
  br label %189

65:                                               ; preds = %41
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IStream_Write(i32 %68, i32* %3, i32 4, i32* %5)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @FAILED(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %189

74:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = add i64 4, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %9, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @dictionary_num_entries(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %74
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = call i32 @PropertyStorage_WriteDictionaryToStream(%struct.TYPE_14__* %88, i32* %9)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i64 @FAILED(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %189

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %74
  %96 = call i32 @PropVariantInit(%struct.TYPE_15__* %11)
  %97 = load i8*, i8** @VT_I2, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i8* %97, i8** %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @PID_CODEPAGE, align 4
  %108 = call i32 @PropertyStorage_WritePropertyToStream(%struct.TYPE_14__* %104, i32 %105, i32 %107, %struct.TYPE_15__* %11, i32* %9)
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i64 @FAILED(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  br label %189

113:                                              ; preds = %95
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @LOCALE_SYSTEM_DEFAULT, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %113
  %120 = load i8*, i8** @VT_I4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i8* %120, i8** %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @PID_LOCALE, align 4
  %131 = call i32 @PropertyStorage_WritePropertyToStream(%struct.TYPE_14__* %127, i32 %128, i32 %130, %struct.TYPE_15__* %11, i32* %9)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i64 @FAILED(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %119
  br label %189

136:                                              ; preds = %119
  br label %137

137:                                              ; preds = %136, %113
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @PROPSETFLAG_CASE_SENSITIVE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %137
  %145 = load i8*, i8** @VT_I4, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i8* %145, i8** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  store i64 1, i64* %148, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* @PID_BEHAVIOR, align 4
  %153 = call i32 @PropertyStorage_WritePropertyToStream(%struct.TYPE_14__* %149, i32 %150, i32 %152, %struct.TYPE_15__* %11, i32* %9)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = call i64 @FAILED(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  br label %189

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158, %137
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @PropertyStorage_WritePropertiesToStream(%struct.TYPE_14__* %160, i32 %161, i32* %9)
  store i32 %162, i32* %4, align 4
  %163 = load i32, i32* %4, align 4
  %164 = call i64 @FAILED(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %189

167:                                              ; preds = %159
  %168 = load i8*, i8** @SECTIONHEADER_OFFSET, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  store i8* %168, i8** %169, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @STREAM_SEEK_SET, align 4
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @IStream_Seek(i32 %172, i8* %175, i32 %173, i32* null)
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = call i64 @FAILED(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %167
  br label %189

181:                                              ; preds = %167
  %182 = ptrtoint i32* %10 to i32
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @StorageUtl_WriteDWord(i32 %182, i32 0, i32 %183)
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @IStream_Write(i32 %187, i32* %10, i32 4, i32* %5)
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %181, %180, %166, %157, %135, %112, %93, %73, %64
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @PropertyStorage_WriteHeadersToStream(%struct.TYPE_14__*) #1

declare dso_local i64 @dictionary_num_entries(i32) #1

declare dso_local i32 @PropertyStorage_MakeSectionHdr(i32, i32, i32*) #1

declare dso_local i32 @IStream_Seek(i32, i8*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IStream_Write(i32, i32*, i32, i32*) #1

declare dso_local i32 @PropertyStorage_WriteDictionaryToStream(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_15__*) #1

declare dso_local i32 @PropertyStorage_WritePropertyToStream(%struct.TYPE_14__*, i32, i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @PropertyStorage_WritePropertiesToStream(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @StorageUtl_WriteDWord(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
