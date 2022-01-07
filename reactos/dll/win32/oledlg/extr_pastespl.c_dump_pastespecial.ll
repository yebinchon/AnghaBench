; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_dump_pastespecial.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_dump_pastespecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i32*, i32*, %struct.TYPE_9__*, %struct.TYPE_6__, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"hwnd %p caption %s hook %p custdata %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"hinst %p template %04x hresource %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"hinst %p template %s hresource %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"dataobj %p arrpasteent %p cpasteent %d arrlinktype %p clinktype %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"cclsidex %d lpclsidex %p nselect %d flink %d hmetapict %p size(%d,%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"arrPasteEntries[%d]: cFormat %08x pTargetDevice %p dwAspect %d lindex %d tymed %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"\09format name %s result text %s flags %04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"arrLinkTypes[%d] %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"lpClsidExclude[%u] %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @dump_pastespecial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pastespecial(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 18
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dump_ps_flags(i32 %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 17
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 16
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @debugstr_w(i64 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_9__*
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 15
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i64, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %12, %struct.TYPE_9__* %18, i32 %21, i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 12
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @IS_INTRESOURCE(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 12
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_9__*
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, i64, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %35, %struct.TYPE_9__* %41, i32 %44)
  br label %61

46:                                               ; preds = %1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 12
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @debugstr_w(i64 %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.TYPE_9__*
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, i64, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %50, %struct.TYPE_9__* %56, i32 %59)
  br label %61

61:                                               ; preds = %46, %31
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i8*, i64, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %65, %struct.TYPE_9__* %68, i64 %71, i32* %74, i64 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to %struct.TYPE_9__*
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, i64, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i64 %81, %struct.TYPE_9__* %85, i32 %88, i32 %91, i32 %94, i32 %98, i32 %102)
  store i64 0, i64* %3, align 8
  br label %104

104:                                              ; preds = %182, %61
  %105 = load i64, i64* %3, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %185

110:                                              ; preds = %104
  %111 = load i64, i64* %3, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i64, i64* %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to %struct.TYPE_9__*
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = load i64, i64* %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 5
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i64, i64* %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 5
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = load i64, i64* %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i64, i64* %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i8*, i64, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i64 %111, %struct.TYPE_9__* %121, i32 %129, i32 %137, i32 %145, i32 %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i64, i64* %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @debugstr_w(i64 %161)
  %163 = sext i32 %162 to i64
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i64, i64* %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @debugstr_w(i64 %170)
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to %struct.TYPE_9__*
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load i64, i64* %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i8*, i64, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %163, %struct.TYPE_9__* %173, i32 %180)
  br label %182

182:                                              ; preds = %110
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %3, align 8
  br label %104

185:                                              ; preds = %104
  store i64 0, i64* %3, align 8
  br label %186

186:                                              ; preds = %203, %185
  %187 = load i64, i64* %3, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ult i64 %187, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %186
  %193 = load i64, i64* %3, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %3, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to %struct.TYPE_9__*
  %202 = call i32 (i8*, i64, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 %193, %struct.TYPE_9__* %201)
  br label %203

203:                                              ; preds = %192
  %204 = load i64, i64* %3, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %3, align 8
  br label %186

206:                                              ; preds = %186
  store i64 0, i64* %4, align 8
  br label %207

207:                                              ; preds = %224, %206
  %208 = load i64, i64* %4, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ult i64 %208, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %207
  %214 = load i64, i64* %4, align 8
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* %4, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = call i32 @debugstr_guid(i32* %219)
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to %struct.TYPE_9__*
  %223 = call i32 (i8*, i64, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %214, %struct.TYPE_9__* %222)
  br label %224

224:                                              ; preds = %213
  %225 = load i64, i64* %4, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %4, align 8
  br label %207

227:                                              ; preds = %207
  ret void
}

declare dso_local i32 @dump_ps_flags(i32) #1

declare dso_local i32 @TRACE(i8*, i64, %struct.TYPE_9__*, ...) #1

declare dso_local i32 @debugstr_w(i64) #1

declare dso_local i64 @IS_INTRESOURCE(i64) #1

declare dso_local i32 @debugstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
