; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_http_auth.c_AuthDigest.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_http_auth.c_AuthDigest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.md5_s = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Digest Authentication: Mandatory 'realm' value not available\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"MD5-sess\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"auth-int\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_3__*, i8*, i8*, i8*, i8*)* @AuthDigest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @AuthDigest(i32* %0, %struct.TYPE_3__* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [9 x i8], align 1
  %18 = alloca %struct.md5_s, align 4
  %19 = alloca %struct.md5_s, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @msg_Warn(i32* %25, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %230

27:                                               ; preds = %6
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @strdup(i8* %35)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %230

40:                                               ; preds = %32
  br label %118

41:                                               ; preds = %27
  %42 = call i32 @InitMD5(%struct.md5_s* %18)
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = call i32 @AddMD5(%struct.md5_s* %18, i8* %43, i32 %45)
  %47 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @AddMD5(%struct.md5_s* %18, i8* %50, i32 %54)
  %56 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = call i32 @AddMD5(%struct.md5_s* %18, i8* %57, i32 %59)
  %61 = call i32 @EndMD5(%struct.md5_s* %18)
  %62 = call i8* @psz_md5_hash(%struct.md5_s* %18)
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %41
  br label %230

66:                                               ; preds = %41
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %117

71:                                               ; preds = %66
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %117

77:                                               ; preds = %71
  %78 = call i32 @InitMD5(%struct.md5_s* %18)
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @AddMD5(%struct.md5_s* %18, i8* %79, i32 32)
  %81 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = call i32 @AddMD5(%struct.md5_s* %18, i8* %84, i32 %88)
  %90 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = call i32 @AddMD5(%struct.md5_s* %18, i8* %93, i32 %97)
  %99 = call i32 @EndMD5(%struct.md5_s* %18)
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 @free(i8* %100)
  %102 = call i8* @psz_md5_hash(%struct.md5_s* %18)
  store i8* %102, i8** %13, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %77
  br label %230

106:                                              ; preds = %77
  %107 = load i8*, i8** %13, align 8
  %108 = call i8* @strdup(i8* %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %230

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %71, %66
  br label %118

118:                                              ; preds = %117, %40
  %119 = call i32 @InitMD5(%struct.md5_s* %18)
  %120 = load i8*, i8** %9, align 8
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = call i32 @AddMD5(%struct.md5_s* %18, i8* %124, i32 %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %130 = load i8*, i8** %10, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i8*, i8** %10, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = call i32 @AddMD5(%struct.md5_s* %18, i8* %133, i32 %135)
  br label %139

137:                                              ; preds = %128
  %138 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %139

139:                                              ; preds = %137, %132
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %162

144:                                              ; preds = %139
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @strcmp(i8* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %144
  %151 = call i32 @InitMD5(%struct.md5_s* %19)
  %152 = call i32 @AddMD5(%struct.md5_s* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %153 = call i32 @EndMD5(%struct.md5_s* %19)
  %154 = call i8* @psz_md5_hash(%struct.md5_s* %19)
  store i8* %154, i8** %15, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %230

158:                                              ; preds = %150
  %159 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %160 = load i8*, i8** %15, align 8
  %161 = call i32 @AddMD5(%struct.md5_s* %18, i8* %160, i32 32)
  br label %162

162:                                              ; preds = %158, %144, %139
  %163 = call i32 @EndMD5(%struct.md5_s* %18)
  %164 = call i8* @psz_md5_hash(%struct.md5_s* %18)
  store i8* %164, i8** %14, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %230

168:                                              ; preds = %162
  %169 = call i32 @InitMD5(%struct.md5_s* %18)
  %170 = load i8*, i8** %13, align 8
  %171 = call i32 @AddMD5(%struct.md5_s* %18, i8* %170, i32 32)
  %172 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = call i32 @AddMD5(%struct.md5_s* %18, i8* %175, i32 %179)
  %181 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 5
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %225

186:                                              ; preds = %168
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 5
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 5
  %195 = load i8*, i8** %194, align 8
  %196 = call i64 @strcmp(i8* %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %225

198:                                              ; preds = %192, %186
  %199 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 0
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @snprintf(i8* %199, i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %202)
  %204 = getelementptr inbounds [9 x i8], [9 x i8]* %17, i64 0, i64 0
  %205 = call i32 @AddMD5(%struct.md5_s* %18, i8* %204, i32 8)
  %206 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 4
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = call i32 @AddMD5(%struct.md5_s* %18, i8* %209, i32 %213)
  %215 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 5
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 5
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @strlen(i8* %221)
  %223 = call i32 @AddMD5(%struct.md5_s* %18, i8* %218, i32 %222)
  %224 = call i32 @AddMD5(%struct.md5_s* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %225

225:                                              ; preds = %198, %192, %168
  %226 = load i8*, i8** %14, align 8
  %227 = call i32 @AddMD5(%struct.md5_s* %18, i8* %226, i32 32)
  %228 = call i32 @EndMD5(%struct.md5_s* %18)
  %229 = call i8* @psz_md5_hash(%struct.md5_s* %18)
  store i8* %229, i8** %16, align 8
  br label %230

230:                                              ; preds = %225, %167, %157, %115, %105, %65, %39, %24
  %231 = load i8*, i8** %13, align 8
  %232 = call i32 @free(i8* %231)
  %233 = load i8*, i8** %14, align 8
  %234 = call i32 @free(i8* %233)
  %235 = load i8*, i8** %15, align 8
  %236 = call i32 @free(i8* %235)
  %237 = load i8*, i8** %16, align 8
  ret i8* %237
}

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @InitMD5(%struct.md5_s*) #1

declare dso_local i32 @AddMD5(%struct.md5_s*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @EndMD5(%struct.md5_s*) #1

declare dso_local i8* @psz_md5_hash(%struct.md5_s*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
