; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_tolower.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_tolower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ret = %x\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"errno = %d\0A\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"skipping tolower tests that depends on locale\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4
@LCMAP_LOWERCASE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"setlocale failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_tolower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_tolower() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @p_tolower(i32 65)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 97
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @p_tolower(i32 244)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 244
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -559038737, i32* @errno, align 4
  %19 = call i32 @p_tolower(i32 -12)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, -12
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @errno, align 4
  %26 = icmp eq i32 %25, -559038737
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 -559038737, i32* @errno, align 4
  %30 = call i32 @p_tolower(i32 -48)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, -48
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @errno, align 4
  %37 = icmp eq i32 %36, -559038737
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @LC_ALL, align 4
  %42 = call i32* @setlocale(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 -559038737, i32* @errno, align 4
  %43 = call i32 @p_tolower(i32 -12)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, -12
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @errno, align 4
  %50 = icmp eq i32 %49, -559038737
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @LC_ALL, align 4
  %55 = call i32* @setlocale(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %0
  %58 = call i32 @win_skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %211

59:                                               ; preds = %0
  %60 = load i32, i32* @LC_ALL, align 4
  %61 = call i32* @setlocale(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8 -12, i8* %3, align 1
  store i32 -559038737, i32* @errno, align 4
  %62 = load i8, i8* %3, align 1
  %63 = sext i8 %62 to i32
  %64 = call i32 @p_tolower(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @CP_ACP, align 4
  %66 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %67 = call i32 @MultiByteToWideChar(i32 %65, i32 %66, i8* %3, i32 1, i32* %1, i32 1)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load i32, i32* @CP_ACP, align 4
  %71 = load i32, i32* @LCMAP_LOWERCASE, align 4
  %72 = call i32 @LCMapStringW(i32 %70, i32 %71, i32* %1, i32 1, i32* %2, i32 1)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @CP_ACP, align 4
  %76 = call i32 @WideCharToMultiByte(i32 %75, i32 0, i32* %2, i32 1, i8* %4, i32 1, i32* null, i32* null)
  store i32 %76, i32* %6, align 4
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %69, %59
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = load i8, i8* %4, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  %89 = load i8, i8* %3, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @broken(i32 %92)
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %87, %82
  %96 = phi i1 [ true, %82 ], [ %94, %87 ]
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %108

100:                                              ; preds = %79
  %101 = load i32, i32* %5, align 4
  %102 = load i8, i8* %3, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %100, %95
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* %5, align 4
  %113 = load i8, i8* %4, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %111, %108
  %117 = load i32, i32* @errno, align 4
  %118 = load i32, i32* @EILSEQ, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* @errno, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %116, %111
  store i8 -48, i8* %3, align 1
  store i32 -559038737, i32* @errno, align 4
  %124 = load i8, i8* %3, align 1
  %125 = sext i8 %124 to i32
  %126 = call i32 @p_tolower(i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* @CP_ACP, align 4
  %128 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %129 = call i32 @MultiByteToWideChar(i32 %127, i32 %128, i8* %3, i32 1, i32* %1, i32 1)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %123
  %132 = load i32, i32* @CP_ACP, align 4
  %133 = load i32, i32* @LCMAP_LOWERCASE, align 4
  %134 = call i32 @LCMapStringW(i32 %132, i32 %133, i32* %1, i32 1, i32* %2, i32 1)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* @CP_ACP, align 4
  %138 = call i32 @WideCharToMultiByte(i32 %137, i32 0, i32* %2, i32 1, i8* %4, i32 1, i32* null, i32* null)
  store i32 %138, i32* %6, align 4
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %141

140:                                              ; preds = %136, %131, %123
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %140, %136
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = load i32, i32* %5, align 4
  %146 = load i8, i8* %4, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %157, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  %151 = load i8, i8* %3, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %150, %152
  %154 = zext i1 %153 to i32
  %155 = call i64 @broken(i32 %154)
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %149, %144
  %158 = phi i1 [ true, %144 ], [ %156, %149 ]
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %5, align 4
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %160)
  br label %170

162:                                              ; preds = %141
  %163 = load i32, i32* %5, align 4
  %164 = load i8, i8* %3, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %163, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %5, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %162, %157
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i32, i32* %5, align 4
  %175 = load i8, i8* %4, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %173, %170
  %179 = load i32, i32* @errno, align 4
  %180 = load i32, i32* @EILSEQ, align 4
  %181 = icmp eq i32 %179, %180
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* @errno, align 4
  %184 = call i32 (i32, i8*, ...) @ok(i32 %182, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %178, %173
  %186 = call i32 @p_tolower(i32 208)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp eq i32 %187, 208
  %189 = zext i1 %188 to i32
  %190 = load i32, i32* %5, align 4
  %191 = call i32 (i32, i8*, ...) @ok(i32 %189, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @LC_ALL, align 4
  %193 = call i32* @setlocale(i32 %192, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %194 = icmp ne i32* %193, null
  %195 = zext i1 %194 to i32
  %196 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %197 = call i32 @p_tolower(i32 -48)
  store i32 %197, i32* %5, align 4
  %198 = load i32, i32* %5, align 4
  %199 = icmp eq i32 %198, 240
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %5, align 4
  %202 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %201)
  %203 = call i32 @p_tolower(i32 208)
  store i32 %203, i32* %5, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp eq i32 %204, 240
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %5, align 4
  %208 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @LC_ALL, align 4
  %210 = call i32* @setlocale(i32 %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %211

211:                                              ; preds = %185, %57
  ret void
}

declare dso_local i32 @p_tolower(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @LCMapStringW(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
