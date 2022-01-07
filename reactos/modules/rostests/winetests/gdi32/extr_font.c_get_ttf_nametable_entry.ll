; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_get_ttf_nametable_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_font.c_get_ttf_nametable_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfnt_name_header = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@MS_NAME_TAG = common dso_local global i32 0, align 4
@GDI_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no name table found\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"GetFontData should return %u not %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"got format %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"number records out of range: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"storage_offset %u > size %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"entry %d is out of range\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"buffer too small for entry %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*, i32, i32)* @get_ttf_nametable_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ttf_nametable_entry(i32 %0, i64 %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sfnt_name_header*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %14, align 4
  store i32 0, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MS_NAME_TAG, align 4
  %29 = call i32 @GetFontData(i32 %27, i32 %28, i32 0, i32* null, i32 0)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @GDI_ERROR, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @GDI_ERROR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %6, align 4
  br label %231

40:                                               ; preds = %5
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i32, i32* %15, align 4
  %43 = call i32* @HeapAlloc(i32 %41, i32 0, i32 %42)
  store i32* %43, i32** %21, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MS_NAME_TAG, align 4
  %46 = load i32*, i32** %21, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @GetFontData(i32 %44, i32 %45, i32 0, i32* %46, i32 %47)
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %19, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32*, i32** %21, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = bitcast i8* %57 to %struct.sfnt_name_header*
  store %struct.sfnt_name_header* %58, %struct.sfnt_name_header** %12, align 8
  %59 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %60 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @GET_BE_WORD(i64 %61)
  %63 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %64 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %66 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @GET_BE_WORD(i64 %67)
  %69 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %70 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %72 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @GET_BE_WORD(i64 %73)
  %75 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %76 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %78 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %40
  %82 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %83 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %226

87:                                               ; preds = %40
  %88 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %89 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %87
  %93 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %94 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = mul i64 %95, 24
  %97 = add i64 24, %96
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp ugt i64 %97, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %92, %87
  %102 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %103 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %226

107:                                              ; preds = %92
  %108 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %109 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp uge i64 %110, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %116 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* %15, align 4
  %120 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %119)
  br label %226

121:                                              ; preds = %107
  %122 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %123 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %122, i64 1
  %124 = bitcast %struct.sfnt_name_header* %123 to i8*
  %125 = bitcast i8* %124 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %125, %struct.TYPE_3__** %13, align 8
  store i64 0, i64* %22, align 8
  br label %126

126:                                              ; preds = %156, %121
  %127 = load i64, i64* %22, align 8
  %128 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %129 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ult i64 %127, %130
  br i1 %131, label %132, label %159

132:                                              ; preds = %126
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %134 = load i64, i64* %22, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @GET_BE_WORD(i64 %137)
  %139 = load i64, i64* %8, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %156

142:                                              ; preds = %132
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %144 = load i64, i64* %22, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %144
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @match_name_table_language(%struct.TYPE_3__* %145, i32 %146)
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %24, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load i32, i32* %23, align 4
  store i32 %152, i32* %24, align 4
  %153 = load i64, i64* %22, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %25, align 4
  br label %155

155:                                              ; preds = %151, %142
  br label %156

156:                                              ; preds = %155, %141
  %157 = load i64, i64* %22, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %22, align 8
  br label %126

159:                                              ; preds = %126
  %160 = load %struct.sfnt_name_header*, %struct.sfnt_name_header** %12, align 8
  %161 = getelementptr inbounds %struct.sfnt_name_header, %struct.sfnt_name_header* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %164 = load i32, i32* %25, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @GET_BE_WORD(i64 %168)
  %170 = add i64 %162, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %16, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %173 = load i32, i32* %25, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @GET_BE_WORD(i64 %177)
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %17, align 4
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %15, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %159
  %186 = load i32, i32* %25, align 4
  %187 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %186)
  br label %226

188:                                              ; preds = %159
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp sge i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i32, i32* %25, align 4
  %194 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %193)
  br label %226

195:                                              ; preds = %188
  %196 = load i32*, i32** %21, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = bitcast i32* %199 to i64*
  store i64* %200, i64** %20, align 8
  store i32 0, i32* %18, align 4
  br label %201

201:                                              ; preds = %217, %195
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %17, align 4
  %204 = sdiv i32 %203, 2
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %220

206:                                              ; preds = %201
  %207 = load i64*, i64** %20, align 8
  %208 = load i32, i32* %18, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @GET_BE_WORD(i64 %211)
  %213 = load i64*, i64** %9, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %213, i64 %215
  store i64 %212, i64* %216, align 8
  br label %217

217:                                              ; preds = %206
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %18, align 4
  br label %201

220:                                              ; preds = %201
  %221 = load i64*, i64** %9, align 8
  %222 = load i32, i32* %18, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  store i64 0, i64* %224, align 8
  %225 = load i32, i32* @TRUE, align 4
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %220, %192, %185, %114, %101, %81
  %227 = call i32 (...) @GetProcessHeap()
  %228 = load i32*, i32** %21, align 8
  %229 = call i32 @HeapFree(i32 %227, i32 0, i32* %228)
  %230 = load i32, i32* %14, align 4
  store i32 %230, i32* %6, align 4
  br label %231

231:                                              ; preds = %226, %38
  %232 = load i32, i32* %6, align 4
  ret i32 %232
}

declare dso_local i32 @GetFontData(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GET_BE_WORD(i64) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

declare dso_local i32 @match_name_table_language(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
