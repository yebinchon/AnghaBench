; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ExtractStructMembers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ExtractStructMembers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i8*, i8* }

@ExtractStructMembers.member_name = internal global [128 x i8] zeroinitializer, align 16
@ExtractStructMembers.vr = internal global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"ExtractStructMembers(): %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ExtractStructMembers(): member_name = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ExtractStructMembers(): type_number = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ExtractStructMembers(): member is array\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"ExtractStructMembers(): member is ptr\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"ExtractStructMembers(): member is union\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"ExtractStructMembers(): bit_offset = %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"ExtractStructMembers(): bit_size = %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"ExtractStructMembers(): member %s type %x bit_offset %x bit_size%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"ExtractStructMembers(): pTypedef= %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ExtractStructMembers(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = call i32 @DPRINT(i32 %13)
  %15 = call i32 @PICE_memset(%struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 64)
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @StrLenUpToWhiteChar(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %232

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @PICE_strncpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @ExtractStructMembers.member_name, i64 0, i64 0), i8* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* @ExtractStructMembers.member_name, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = call i32 @DPRINT(i32 ptrtoint ([128 x i8]* @ExtractStructMembers.member_name to i32))
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i8*, i8** %4, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = call i64 @IsAddressValid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %231

37:                                               ; preds = %20
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @ExtractTypeNumber(i8* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @DPRINT(i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 0), align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @PICE_strchr(i8* %43, i8 signext 41)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %125

47:                                               ; preds = %37
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %4, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 61
  br i1 %53, label %54, label %124

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 97
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = call i32 @DPRINT(i32 ptrtoint ([41 x i8]* @.str.4 to i32))
  %63 = load i8*, i8** @TRUE, align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 10), align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i8* @PICE_strchr(i8* %64, i8 signext 59)
  store i8* %65, i8** %4, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i8* @PICE_strchr(i8* %66, i8 signext 59)
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call i8* @PICE_strchr(i8* %68, i8 signext 59)
  store i8* %69, i8** %4, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i8*, i8** %4, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %4, align 8
  br label %75

75:                                               ; preds = %72, %61
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @ExtractTypeNumber(i8* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 1), align 4
  br label %123

79:                                               ; preds = %54
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 42
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = call i32 @DPRINT(i32 ptrtoint ([39 x i8]* @.str.5 to i32))
  %86 = load i8*, i8** @TRUE, align 8
  store i8* %86, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 9), align 8
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @ExtractTypeNumber(i8* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @DPRINT(i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 1), align 4
  br label %122

92:                                               ; preds = %79
  %93 = load i8*, i8** %4, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 117
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = call i32 @DPRINT(i32 ptrtoint ([41 x i8]* @.str.6 to i32))
  br label %99

99:                                               ; preds = %117, %97
  %100 = load i8*, i8** %4, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 59
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 59
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i8*, i8** %4, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %110, %104, %99
  %116 = phi i1 [ false, %104 ], [ false, %99 ], [ %114, %110 ]
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %4, align 8
  br label %99

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121, %84
  br label %123

123:                                              ; preds = %122, %75
  br label %124

124:                                              ; preds = %123, %47
  br label %125

125:                                              ; preds = %124, %37
  %126 = load i8*, i8** %4, align 8
  %127 = call i8* @PICE_strchr(i8* %126, i8 signext 44)
  store i8* %127, i8** %4, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %230

130:                                              ; preds = %125
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %4, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @ExtractNumber(i8* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @DPRINT(i32 %135)
  %137 = load i8*, i8** %4, align 8
  %138 = call i8* @PICE_strchr(i8* %137, i8 signext 44)
  store i8* %138, i8** %4, align 8
  %139 = load i8*, i8** %4, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %229

141:                                              ; preds = %130
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %4, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = call i32 @ExtractNumber(i8* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @DPRINT(i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sdiv i32 %151, 8
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %150, %153
  store i64 %154, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 6), align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 4), align 8
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 2), align 8
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 8), align 8
  %160 = call i32 @PICE_strcpy(i32 %159, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @ExtractStructMembers.member_name, i64 0, i64 0))
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  %163 = sdiv i32 %162, 8
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %141
  store i32 4, i32* %9, align 4
  br label %167

167:                                              ; preds = %166, %141
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 6
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 6), align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i64 @IsRangeValid(i64 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %167
  %178 = load i32, i32* %9, align 4
  switch i32 %178, label %191 [
    i32 1, label %179
    i32 2, label %183
    i32 4, label %187
  ]

179:                                              ; preds = %177
  %180 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 6), align 8
  %181 = inttoptr i64 %180 to i64*
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 7), align 8
  br label %191

183:                                              ; preds = %177
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 6), align 8
  %185 = inttoptr i64 %184 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 7), align 8
  br label %191

187:                                              ; preds = %177
  %188 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 6), align 8
  %189 = inttoptr i64 %188 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 7), align 8
  br label %191

191:                                              ; preds = %177, %187, %183, %179
  br label %192

192:                                              ; preds = %191, %167
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %7, align 4
  %196 = call i32 @DPRINT(i32 %195)
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i8* @FindTypeDefinition(i32 %199, i32 %200, i32 %203)
  store i8* %204, i8** %10, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %228

207:                                              ; preds = %192
  %208 = load i8*, i8** %10, align 8
  %209 = ptrtoint i8* %208 to i32
  %210 = call i32 @DPRINT(i32 %209)
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 3), align 4
  %212 = load i8*, i8** %10, align 8
  %213 = call i8* @ExtractTypeName(i8* %212)
  %214 = call i32 @PICE_strcpy(i32 %211, i8* %213)
  %215 = load i8*, i8** %10, align 8
  %216 = call i8* @PICE_strchr(i8* %215, i8 signext 58)
  store i8* %216, i8** %10, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %227

219:                                              ; preds = %207
  %220 = load i8*, i8** %10, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %10, align 8
  %222 = load i8*, i8** %10, align 8
  %223 = call i32 @ExtractTypeNumber(i8* %222)
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @DPRINT(i32 %224)
  %226 = load i32, i32* %8, align 4
  store i32 %226, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ExtractStructMembers.vr, i32 0, i32 1), align 4
  br label %227

227:                                              ; preds = %219, %207
  br label %228

228:                                              ; preds = %227, %192
  br label %229

229:                                              ; preds = %228, %130
  br label %230

230:                                              ; preds = %229, %125
  br label %231

231:                                              ; preds = %230, %20
  br label %232

232:                                              ; preds = %231, %2
  ret %struct.TYPE_6__* @ExtractStructMembers.vr
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PICE_memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @StrLenUpToWhiteChar(i8*, i8*) #1

declare dso_local i32 @PICE_strncpy(i8*, i8*, i32) #1

declare dso_local i64 @IsAddressValid(i32) #1

declare dso_local i32 @ExtractTypeNumber(i8*) #1

declare dso_local i8* @PICE_strchr(i8*, i8 signext) #1

declare dso_local i32 @ExtractNumber(i8*) #1

declare dso_local i32 @PICE_strcpy(i32, i8*) #1

declare dso_local i64 @IsRangeValid(i64, i32) #1

declare dso_local i8* @FindTypeDefinition(i32, i32, i32) #1

declare dso_local i8* @ExtractTypeName(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
