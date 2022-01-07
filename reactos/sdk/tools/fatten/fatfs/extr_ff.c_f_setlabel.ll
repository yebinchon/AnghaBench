; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_setlabel.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_setlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 }

@_DF1S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"\22*+,.:;<=>?[]|\7F\00", align 1
@FR_INVALID_NAME = common dso_local global i64 0, align 8
@DDEM = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i64 0, align 8
@DIR_CrtTime = common dso_local global i32 0, align 4
@DIR_WrtTime = common dso_local global i32 0, align 4
@FR_NO_FILE = common dso_local global i64 0, align 8
@SZ_DIRE = common dso_local global i32 0, align 4
@AM_VOL = common dso_local global i32 0, align 4
@DIR_Attr = common dso_local global i64 0, align 8
@ExCvt = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_setlabel(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca [11 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %13 = call i64 @find_volume(%struct.TYPE_9__** %12, i8** %3, i32 1)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @LEAVE_FF(%struct.TYPE_9__* %18, i64 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %22, align 16
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %30, %21
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %23

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 32
  br label %45

45:                                               ; preds = %37, %34
  %46 = phi i1 [ false, %34 ], [ %44, %37 ]
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %9, align 8
  br label %34

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %163

54:                                               ; preds = %51
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %55

55:                                               ; preds = %140, %54
  %56 = load i8*, i8** %3, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %56, i64 %57
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @IsDBCS1(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %55
  %66 = load i64, i64* %8, align 8
  %67 = icmp ult i64 %66, 10
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load i8*, i8** %3, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @IsDBCS2(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 %80, 8
  %82 = load i8*, i8** %3, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %83
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = or i32 %81, %87
  br label %90

89:                                               ; preds = %72, %68, %65
  br label %90

90:                                               ; preds = %89, %79
  %91 = phi i32 [ %88, %79 ], [ 0, %89 ]
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %55
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @IsLower(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %97, 32
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32, i32* @_DF1S, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = icmp sge i32 %103, 128
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %105, %102, %99
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @chk_chr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = icmp sge i32 %115, 256
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 10, i32 11
  %119 = sext i32 %118 to i64
  %120 = icmp uge i64 %114, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %113, %109, %106
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load i64, i64* @FR_INVALID_NAME, align 8
  %125 = call i32 @LEAVE_FF(%struct.TYPE_9__* %123, i64 %124)
  br label %126

126:                                              ; preds = %121, %113
  %127 = load i32, i32* %10, align 4
  %128 = icmp sge i32 %127, 256
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i32, i32* %10, align 4
  %131 = ashr i32 %130, 8
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %8, align 8
  %134 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %132
  store i32 %131, i32* %134, align 4
  br label %135

135:                                              ; preds = %129, %126
  %136 = load i32, i32* %10, align 4
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %8, align 8
  %139 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %137
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %135
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* %9, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %55, label %144

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %148, %144
  %146 = load i64, i64* %8, align 8
  %147 = icmp ult i64 %146, 11
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i64, i64* %8, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %8, align 8
  %151 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %149
  store i32 32, i32* %151, align 4
  br label %145

152:                                              ; preds = %145
  %153 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = load i32, i32* @DDEM, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = load i64, i64* @FR_INVALID_NAME, align 8
  %161 = call i32 @LEAVE_FF(%struct.TYPE_9__* %159, i64 %160)
  br label %162

162:                                              ; preds = %157, %152
  br label %163

163:                                              ; preds = %162, %51
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i64 0, i64* %164, align 8
  %165 = call i64 @dir_sdi(%struct.TYPE_8__* %5, i32 0)
  store i64 %165, i64* %4, align 8
  %166 = load i64, i64* %4, align 8
  %167 = load i64, i64* @FR_OK, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %263

169:                                              ; preds = %163
  %170 = call i64 @dir_read(%struct.TYPE_8__* %5, i32 1)
  store i64 %170, i64* %4, align 8
  %171 = load i64, i64* %4, align 8
  %172 = load i64, i64* @FR_OK, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %210

174:                                              ; preds = %169
  %175 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %176 = load i32, i32* %175, align 16
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %182 = call i32 @mem_cpy(i32* %180, i32* %181, i32 11)
  %183 = call i32 (...) @GET_FATTIME()
  store i32 %183, i32* %11, align 4
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* @DIR_CrtTime, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @ST_DWORD(i32* %188, i32 %189)
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* @DIR_WrtTime, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @ST_DWORD(i32* %195, i32 %196)
  br label %203

198:                                              ; preds = %174
  %199 = load i32, i32* @DDEM, align 4
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 %199, i32* %202, align 4
  br label %203

203:                                              ; preds = %198, %178
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  store i32 1, i32* %206, align 4
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = call i64 @sync_fs(%struct.TYPE_9__* %208)
  store i64 %209, i64* %4, align 8
  br label %262

210:                                              ; preds = %169
  %211 = load i64, i64* %4, align 8
  %212 = load i64, i64* @FR_NO_FILE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %261

214:                                              ; preds = %210
  %215 = load i64, i64* @FR_OK, align 8
  store i64 %215, i64* %4, align 8
  %216 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %217 = load i32, i32* %216, align 16
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %260

219:                                              ; preds = %214
  %220 = call i64 @dir_alloc(%struct.TYPE_8__* %5, i32 1)
  store i64 %220, i64* %4, align 8
  %221 = load i64, i64* %4, align 8
  %222 = load i64, i64* @FR_OK, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %259

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* @SZ_DIRE, align 4
  %228 = call i32 @mem_set(i32* %226, i32 0, i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  %232 = call i32 @mem_cpy(i32* %230, i32* %231, i32 11)
  %233 = load i32, i32* @AM_VOL, align 4
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @DIR_Attr, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32 %233, i32* %237, align 4
  %238 = call i32 (...) @GET_FATTIME()
  store i32 %238, i32* %11, align 4
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* @DIR_CrtTime, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %11, align 4
  %245 = call i32 @ST_DWORD(i32* %243, i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* @DIR_WrtTime, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %11, align 4
  %252 = call i32 @ST_DWORD(i32* %250, i32 %251)
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  store i32 1, i32* %255, align 4
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = call i64 @sync_fs(%struct.TYPE_9__* %257)
  store i64 %258, i64* %4, align 8
  br label %259

259:                                              ; preds = %224, %219
  br label %260

260:                                              ; preds = %259, %214
  br label %261

261:                                              ; preds = %260, %210
  br label %262

262:                                              ; preds = %261, %203
  br label %263

263:                                              ; preds = %262, %163
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %264, align 8
  %266 = load i64, i64* %4, align 8
  %267 = call i32 @LEAVE_FF(%struct.TYPE_9__* %265, i64 %266)
  %268 = load i64, i64* %2, align 8
  ret i64 %268
}

declare dso_local i64 @find_volume(%struct.TYPE_9__**, i8**, i32) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @IsDBCS1(i32) #1

declare dso_local i64 @IsDBCS2(i8 signext) #1

declare dso_local i64 @IsLower(i32) #1

declare dso_local i64 @chk_chr(i8*, i32) #1

declare dso_local i64 @dir_sdi(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @dir_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mem_cpy(i32*, i32*, i32) #1

declare dso_local i32 @GET_FATTIME(...) #1

declare dso_local i32 @ST_DWORD(i32*, i32) #1

declare dso_local i64 @sync_fs(%struct.TYPE_9__*) #1

declare dso_local i64 @dir_alloc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mem_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
