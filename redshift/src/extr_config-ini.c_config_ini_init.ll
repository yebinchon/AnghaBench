; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_config-ini.c_config_ini_init.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_config-ini.c_config_ini_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_7__* }

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Malformed section header in config file.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Malformed assignment in config file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Assignment outside section in config file.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_ini_init(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @open_config_file(i8* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %271

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %271

30:                                               ; preds = %2
  %31 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %8, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %9, align 8
  br label %35

35:                                               ; preds = %265, %68, %30
  br label %36

36:                                               ; preds = %35
  %37 = trunc i64 %32 to i32
  %38 = load i32*, i32** %7, align 8
  %39 = call i8* @fgets(i8* %34, i32 %37, i32* %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %266

43:                                               ; preds = %36
  %44 = call i32 @strspn(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %34, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @strcspn(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 59
  br i1 %55, label %68, label %56

56:                                               ; preds = %43
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 35
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %56, %43
  br label %35

69:                                               ; preds = %62
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 91
  br i1 %74, label %75, label %155

75:                                               ; preds = %69
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 93)
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %75
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %13, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88, %82, %75
  %93 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 @fputs(i32 %93, i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @fclose(i32* %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = call i32 @config_ini_free(%struct.TYPE_6__* %98)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

100:                                              ; preds = %88
  %101 = load i8*, i8** %13, align 8
  store i8 0, i8* %101, align 1
  %102 = call i8* @malloc(i64 24)
  %103 = bitcast i8* %102 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %6, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = icmp eq %struct.TYPE_8__* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @fclose(i32* %107)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = call i32 @config_ini_free(%struct.TYPE_6__* %109)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

111:                                              ; preds = %100
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i32* null, i32** %113, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %115, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  store %struct.TYPE_8__* %118, %struct.TYPE_8__** %120, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %123, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = load i8*, i8** %12, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = add nsw i64 %128, 1
  %130 = call i8* @malloc(i64 %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store i32* %131, i32** %133, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %111
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @fclose(i32* %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = call i32 @config_ini_free(%struct.TYPE_6__* %141)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

143:                                              ; preds = %111
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = add nsw i64 %152, 1
  %154 = call i32 @memcpy(i32* %146, i8* %147, i64 %153)
  br label %265

155:                                              ; preds = %69
  %156 = load i8*, i8** %10, align 8
  %157 = call i8* @strchr(i8* %156, i8 signext 61)
  store i8* %157, i8** %15, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = load i8*, i8** %15, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = icmp eq i8* %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %160, %155
  %165 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* @stderr, align 4
  %167 = call i32 @fputs(i32 %165, i32 %166)
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @fclose(i32* %168)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %171 = call i32 @config_ini_free(%struct.TYPE_6__* %170)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

172:                                              ; preds = %160
  %173 = load i8*, i8** %15, align 8
  store i8 0, i8* %173, align 1
  %174 = load i8*, i8** %15, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  store i8* %175, i8** %16, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %177 = icmp eq %struct.TYPE_8__* %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %172
  %179 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %180 = load i32, i32* @stderr, align 4
  %181 = call i32 @fputs(i32 %179, i32 %180)
  %182 = load i32*, i32** %7, align 8
  %183 = call i32 @fclose(i32* %182)
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = call i32 @config_ini_free(%struct.TYPE_6__* %184)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

186:                                              ; preds = %172
  %187 = call i8* @malloc(i64 24)
  %188 = bitcast i8* %187 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %188, %struct.TYPE_7__** %17, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %190 = icmp eq %struct.TYPE_7__* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 @fclose(i32* %192)
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %195 = call i32 @config_ini_free(%struct.TYPE_6__* %194)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

196:                                              ; preds = %186
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  store i32* null, i32** %198, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  store i32* null, i32** %200, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  store %struct.TYPE_7__* %203, %struct.TYPE_7__** %205, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  store %struct.TYPE_7__* %206, %struct.TYPE_7__** %208, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = load i8*, i8** %10, align 8
  %211 = ptrtoint i8* %209 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = add nsw i64 %213, 1
  %215 = call i8* @malloc(i64 %214)
  %216 = bitcast i8* %215 to i32*
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  store i32* %216, i32** %218, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %228

223:                                              ; preds = %196
  %224 = load i32*, i32** %7, align 8
  %225 = call i32 @fclose(i32* %224)
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %227 = call i32 @config_ini_free(%struct.TYPE_6__* %226)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

228:                                              ; preds = %196
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i8*, i8** %10, align 8
  %233 = load i8*, i8** %15, align 8
  %234 = load i8*, i8** %10, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = add nsw i64 %237, 1
  %239 = call i32 @memcpy(i32* %231, i8* %232, i64 %238)
  %240 = load i8*, i8** %16, align 8
  %241 = call i32 @strlen(i8* %240)
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  store i64 %243, i64* %18, align 8
  %244 = load i64, i64* %18, align 8
  %245 = call i8* @malloc(i64 %244)
  %246 = bitcast i8* %245 to i32*
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  store i32* %246, i32** %248, align 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = icmp eq i32* %251, null
  br i1 %252, label %253, label %258

253:                                              ; preds = %228
  %254 = load i32*, i32** %7, align 8
  %255 = call i32 @fclose(i32* %254)
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %257 = call i32 @config_ini_free(%struct.TYPE_6__* %256)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

258:                                              ; preds = %228
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i8*, i8** %16, align 8
  %263 = load i64, i64* %18, align 8
  %264 = call i32 @memcpy(i32* %261, i8* %262, i64 %263)
  br label %265

265:                                              ; preds = %258, %143
  br label %35

266:                                              ; preds = %42
  %267 = load i32*, i32** %7, align 8
  %268 = call i32 @fclose(i32* %267)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %269

269:                                              ; preds = %266, %253, %223, %191, %178, %164, %138, %106, %92
  %270 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %270)
  br label %271

271:                                              ; preds = %269, %29, %28
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32* @open_config_file(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @config_ini_free(%struct.TYPE_6__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
