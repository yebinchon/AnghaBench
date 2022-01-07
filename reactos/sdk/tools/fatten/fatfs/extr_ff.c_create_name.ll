; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_create_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_create_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@FR_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\22*+,:;<=>?[]|\7F\00", align 1
@NS_LAST = common dso_local global i8 0, align 1
@DDEM = common dso_local global i8 0, align 1
@RDDEM = common dso_local global i8* null, align 8
@NS_EXT = common dso_local global i8 0, align 1
@NS_BODY = common dso_local global i8 0, align 1
@NSFLAG = common dso_local global i64 0, align 8
@FR_OK = common dso_local global i32 0, align 4
@ExCvt = common dso_local global i8* null, align 8
@NS_DOT = common dso_local global i8 0, align 1
@NS_LFN = common dso_local global i8 0, align 1
@NS_LOSS = common dso_local global i8 0, align 1
@_DF1S = common dso_local global i64 0, align 8
@_MAX_LFN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**)* @create_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_name(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %13, align 8
  br label %16

16:                                               ; preds = %29, %2
  %17 = load i8*, i8** %13, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %13, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 92
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ true, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %13, align 8
  br label %16

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @mem_set(i8* %36, i8 signext 32, i32 11)
  store i8 0, i8* %6, align 1
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i64 8, i64* %10, align 8
  br label %38

38:                                               ; preds = %154, %73, %32
  %39 = load i8*, i8** %13, align 8
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %11, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %7, align 1
  %44 = load i8, i8* %7, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 32
  br i1 %46, label %55, label %47

47:                                               ; preds = %38
  %48 = load i8, i8* %7, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %7, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 92
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47, %38
  br label %155

56:                                               ; preds = %51
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60, %56
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 8
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i8, i8* %7, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 46
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @FR_INVALID_NAME, align 4
  store i32 %72, i32* %3, align 4
  br label %225

73:                                               ; preds = %67
  store i64 8, i64* %12, align 8
  store i64 11, i64* %10, align 8
  %74 = load i8, i8* %6, align 1
  %75 = sext i8 %74 to i32
  %76 = shl i32 %75, 2
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %6, align 1
  br label %38

78:                                               ; preds = %60
  %79 = load i8, i8* %7, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sge i32 %80, 128
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i8, i8* %6, align 1
  %84 = sext i8 %83 to i32
  %85 = or i32 %84, 3
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %6, align 1
  %87 = load i32, i32* @FR_INVALID_NAME, align 4
  store i32 %87, i32* %3, align 4
  br label %225

88:                                               ; preds = %78
  %89 = load i8, i8* %7, align 1
  %90 = call i64 @IsDBCS1(i8 signext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %119

92:                                               ; preds = %88
  %93 = load i8*, i8** %13, align 8
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %11, align 8
  %96 = getelementptr inbounds i8, i8* %93, i64 %94
  %97 = load i8, i8* %96, align 1
  store i8 %97, i8* %8, align 1
  %98 = load i8, i8* %8, align 1
  %99 = call i32 @IsDBCS2(i8 signext %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %10, align 8
  %104 = sub i64 %103, 1
  %105 = icmp uge i64 %102, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101, %92
  %107 = load i32, i32* @FR_INVALID_NAME, align 4
  store i32 %107, i32* %3, align 4
  br label %225

108:                                              ; preds = %101
  %109 = load i8, i8* %7, align 1
  %110 = load i8*, i8** %9, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %12, align 8
  %113 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 %109, i8* %113, align 1
  %114 = load i8, i8* %8, align 1
  %115 = load i8*, i8** %9, align 8
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %12, align 8
  %118 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8 %114, i8* %118, align 1
  br label %154

119:                                              ; preds = %88
  %120 = load i8, i8* %7, align 1
  %121 = call i64 @chk_chr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8 signext %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* @FR_INVALID_NAME, align 4
  store i32 %124, i32* %3, align 4
  br label %225

125:                                              ; preds = %119
  %126 = load i8, i8* %7, align 1
  %127 = call i64 @IsUpper(i8 signext %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i8, i8* %6, align 1
  %131 = sext i8 %130 to i32
  %132 = or i32 %131, 2
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %6, align 1
  br label %148

134:                                              ; preds = %125
  %135 = load i8, i8* %7, align 1
  %136 = call i64 @IsLower(i8 signext %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i8, i8* %6, align 1
  %140 = sext i8 %139 to i32
  %141 = or i32 %140, 1
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %6, align 1
  %143 = load i8, i8* %7, align 1
  %144 = sext i8 %143 to i32
  %145 = sub nsw i32 %144, 32
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %7, align 1
  br label %147

147:                                              ; preds = %138, %134
  br label %148

148:                                              ; preds = %147, %129
  %149 = load i8, i8* %7, align 1
  %150 = load i8*, i8** %9, align 8
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %12, align 8
  %153 = getelementptr inbounds i8, i8* %150, i64 %151
  store i8 %149, i8* %153, align 1
  br label %154

154:                                              ; preds = %148, %108
  br label %38

155:                                              ; preds = %55
  %156 = load i8*, i8** %13, align 8
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  %159 = load i8**, i8*** %5, align 8
  store i8* %158, i8** %159, align 8
  %160 = load i8, i8* %7, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp sle i32 %161, 32
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i8, i8* @NS_LAST, align 1
  %165 = sext i8 %164 to i32
  br label %167

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %166, %163
  %168 = phi i32 [ %165, %163 ], [ 0, %166 ]
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %7, align 1
  %170 = load i64, i64* %12, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @FR_INVALID_NAME, align 4
  store i32 %173, i32* %3, align 4
  br label %225

174:                                              ; preds = %167
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = load i8, i8* @DDEM, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %174
  %183 = load i8*, i8** @RDDEM, align 8
  %184 = ptrtoint i8* %183 to i8
  %185 = load i8*, i8** %9, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  store i8 %184, i8* %186, align 1
  br label %187

187:                                              ; preds = %182, %174
  %188 = load i64, i64* %10, align 8
  %189 = icmp eq i64 %188, 8
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i8, i8* %6, align 1
  %192 = sext i8 %191 to i32
  %193 = shl i32 %192, 2
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %6, align 1
  br label %195

195:                                              ; preds = %190, %187
  %196 = load i8, i8* %6, align 1
  %197 = sext i8 %196 to i32
  %198 = and i32 %197, 3
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load i8, i8* @NS_EXT, align 1
  %202 = sext i8 %201 to i32
  %203 = load i8, i8* %7, align 1
  %204 = sext i8 %203 to i32
  %205 = or i32 %204, %202
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %7, align 1
  br label %207

207:                                              ; preds = %200, %195
  %208 = load i8, i8* %6, align 1
  %209 = sext i8 %208 to i32
  %210 = and i32 %209, 12
  %211 = icmp eq i32 %210, 4
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load i8, i8* @NS_BODY, align 1
  %214 = sext i8 %213 to i32
  %215 = load i8, i8* %7, align 1
  %216 = sext i8 %215 to i32
  %217 = or i32 %216, %214
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %7, align 1
  br label %219

219:                                              ; preds = %212, %207
  %220 = load i8, i8* %7, align 1
  %221 = load i8*, i8** %9, align 8
  %222 = load i64, i64* @NSFLAG, align 8
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8 %220, i8* %223, align 1
  %224 = load i32, i32* @FR_OK, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %219, %172, %123, %106, %82, %71
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @mem_set(i8*, i8 signext, i32) #1

declare dso_local i64 @IsDBCS1(i8 signext) #1

declare dso_local i32 @IsDBCS2(i8 signext) #1

declare dso_local i64 @chk_chr(i8*, i8 signext) #1

declare dso_local i64 @IsUpper(i8 signext) #1

declare dso_local i64 @IsLower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
