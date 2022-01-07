; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_decodeDatabase.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_decodeDatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1
@MX_FILE_SZ = common dso_local global i32 0, align 4
@eVerbosity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Input database too big: max %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A--\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i32*)* @decodeDatabase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decodeDatabase(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 4096, i32* %12, align 4
  store i8 0, i8* %17, align 1
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %229

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i8* @sqlite3_malloc64(i32 %25)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %23
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = call i32 @memset(i8* %34, i32 0, i64 %36)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %220, %33
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %223

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %18, align 1
  %48 = load i8, i8* %18, align 1
  %49 = call i64 @isxdigit(i8 zeroext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %170

51:                                               ; preds = %42
  %52 = load i32, i32* %15, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i8, i8* %18, align 1
  %59 = call zeroext i8 @hexToInt(i8 zeroext %58)
  %60 = zext i8 %59 to i32
  %61 = mul nsw i32 %60, 16
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %17, align 1
  br label %169

63:                                               ; preds = %51
  %64 = load i8, i8* %18, align 1
  %65 = call zeroext i8 @hexToInt(i8 zeroext %64)
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* %17, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %68, %66
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %17, align 1
  %71 = load i32, i32* %15, align 4
  %72 = udiv i32 %71, 2
  %73 = sub i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp uge i32 %74, %75
  br i1 %76, label %77, label %144

77:                                               ; preds = %63
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @MX_FILE_SZ, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @MX_FILE_SZ, align 4
  %84 = icmp uge i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81, %77
  %86 = load i64, i64* @eVerbosity, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* @MX_FILE_SZ, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @sqlite3_free(i8* %93)
  store i32 -1, i32* %5, align 4
  br label %229

95:                                               ; preds = %81
  %96 = load i32, i32* %12, align 4
  %97 = mul i32 %96, 2
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ule i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %14, align 4
  %103 = add i32 %102, 4096
  %104 = and i32 %103, -4096
  store i32 %104, i32* %19, align 4
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* @MX_FILE_SZ, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @MX_FILE_SZ, align 4
  %112 = icmp uge i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @sqlite3_free(i8* %114)
  store i32 -1, i32* %5, align 4
  br label %229

116:                                              ; preds = %109
  %117 = load i32, i32* @MX_FILE_SZ, align 4
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %116, %105
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* %19, align 4
  %121 = call i8* @sqlite3_realloc64(i8* %119, i32 %120)
  store i8* %121, i8** %10, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %127 = call i32 @exit(i32 1) #3
  unreachable

128:                                              ; preds = %118
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ugt i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i8*, i8** %10, align 8
  %135 = load i32, i32* %12, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %12, align 4
  %140 = sub i32 %138, %139
  %141 = zext i32 %140 to i64
  %142 = call i32 @memset(i8* %137, i32 0, i64 %141)
  %143 = load i32, i32* %19, align 4
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %128, %63
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp uge i32 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load i32, i32* %14, align 4
  %150 = add i32 %149, 4095
  %151 = and i32 %150, -4096
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @MX_FILE_SZ, align 4
  %154 = icmp ugt i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = load i32, i32* @MX_FILE_SZ, align 4
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %155, %148
  br label %158

158:                                              ; preds = %157, %144
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ult i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i8, i8* %17, align 1
  %165 = load i8*, i8** %10, align 8
  %166 = load i32, i32* %14, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 %164, i8* %168, align 1
  br label %169

169:                                              ; preds = %158, %57
  br label %219

170:                                              ; preds = %42
  %171 = load i8*, i8** %6, align 8
  %172 = load i32, i32* %13, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %176, 91
  br i1 %177, label %178, label %194

178:                                              ; preds = %170
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %16, align 4
  %181 = sub i32 %180, 3
  %182 = icmp ult i32 %179, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load i8*, i8** %6, align 8
  %185 = load i32, i32* %13, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %13, align 4
  %190 = sub i32 %188, %189
  %191 = call i64 @isOffset(i8* %187, i32 %190, i32* %15, i32* %13)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  br label %220

194:                                              ; preds = %183, %178, %170
  %195 = load i8*, i8** %6, align 8
  %196 = load i32, i32* %13, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp eq i32 %200, 10
  br i1 %201, label %202, label %217

202:                                              ; preds = %194
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %16, align 4
  %205 = sub i32 %204, 4
  %206 = icmp ult i32 %203, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = load i8*, i8** %6, align 8
  %209 = load i32, i32* %13, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = call i64 @memcmp(i8* %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load i32, i32* %13, align 4
  %216 = add i32 %215, 4
  store i32 %216, i32* %13, align 4
  br label %223

217:                                              ; preds = %207, %202, %194
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218, %169
  br label %220

220:                                              ; preds = %219, %193
  %221 = load i32, i32* %13, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %38

223:                                              ; preds = %214, %38
  %224 = load i32, i32* %11, align 4
  %225 = load i32*, i32** %9, align 8
  store i32 %224, i32* %225, align 4
  %226 = load i8*, i8** %10, align 8
  %227 = load i8**, i8*** %8, align 8
  store i8* %226, i8** %227, align 8
  %228 = load i32, i32* %13, align 4
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %223, %113, %92, %22
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @isxdigit(i8 zeroext) #1

declare dso_local zeroext i8 @hexToInt(i8 zeroext) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_realloc64(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isOffset(i8*, i32, i32*, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
