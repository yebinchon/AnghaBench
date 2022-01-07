; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_create_test_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_create_test_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strmA_name = common dso_local global i32 0, align 4
@strmB_name = common dso_local global i32 0, align 4
@strmC_name = common dso_local global i32 0, align 4
@stgA_name = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"IStorage_CreateStorage failed: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"IStorage_CreateStream failed: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"IStream_Write failed: 0x%08x, %d of %d bytes written\0A\00", align 1
@stgB_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @create_test_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @create_test_file(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %13 = load i32, i32* @strmA_name, align 4
  %14 = call i32 @lstrlenW(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* @strmB_name, align 4
  %18 = call i32 @lstrlenW(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* @strmC_name, align 4
  %22 = call i32 @lstrlenW(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  store i64 %24, i64* %10, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @stgA_name, align 4
  %27 = load i32, i32* @STGM_READWRITE, align 4
  %28 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @IStorage_CreateStorage(i32* %25, i32 %26, i32 %29, i32 0, i32 0, i32** %3)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %12, align 8
  %36 = call i32 (i32, i8*, i64, ...) @ok(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %12, align 8
  %38 = call i64 @FAILED(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  br label %164

41:                                               ; preds = %1
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @strmA_name, align 4
  %44 = load i32, i32* @STGM_READWRITE, align 4
  %45 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @IStorage_CreateStream(i32* %42, i32 %43, i32 %46, i32 0, i32 0, i32** %5)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %12, align 8
  %53 = call i32 (i32, i8*, i64, ...) @ok(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i64, i64* %12, align 8
  %55 = call i64 @FAILED(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %164

58:                                               ; preds = %41
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @strmA_name, align 4
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @IStream_Write(i32* %59, i32 %60, i64 %61, i64* %11)
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %66, %58
  %71 = phi i1 [ false, %58 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 (i32, i8*, i64, ...) @ok(i32 %72, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %73, i64 %74, i64 %75)
  %77 = load i32*, i32** %2, align 8
  %78 = load i32, i32* @stgB_name, align 4
  %79 = load i32, i32* @STGM_READWRITE, align 4
  %80 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %81 = or i32 %79, %80
  %82 = call i64 @IStorage_CreateStorage(i32* %77, i32 %78, i32 %81, i32 0, i32 0, i32** %4)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @S_OK, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %12, align 8
  %88 = call i32 (i32, i8*, i64, ...) @ok(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @FAILED(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %70
  br label %164

93:                                               ; preds = %70
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* @strmB_name, align 4
  %96 = load i32, i32* @STGM_READWRITE, align 4
  %97 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %98 = or i32 %96, %97
  %99 = call i64 @IStorage_CreateStream(i32* %94, i32 %95, i32 %98, i32 0, i32 0, i32** %6)
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @S_OK, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %12, align 8
  %105 = call i32 (i32, i8*, i64, ...) @ok(i32 %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %104)
  %106 = load i64, i64* %12, align 8
  %107 = call i64 @FAILED(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %93
  br label %164

110:                                              ; preds = %93
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* @strmB_name, align 4
  %113 = load i64, i64* %9, align 8
  %114 = call i64 @IStream_Write(i32* %111, i32 %112, i64 %113, i64* %11)
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @S_OK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp eq i64 %119, %120
  br label %122

122:                                              ; preds = %118, %110
  %123 = phi i1 [ false, %110 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i32 (i32, i8*, i64, ...) @ok(i32 %124, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %125, i64 %126, i64 %127)
  %129 = load i32*, i32** %2, align 8
  %130 = load i32, i32* @strmC_name, align 4
  %131 = load i32, i32* @STGM_READWRITE, align 4
  %132 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %133 = or i32 %131, %132
  %134 = call i64 @IStorage_CreateStream(i32* %129, i32 %130, i32 %133, i32 0, i32 0, i32** %7)
  store i64 %134, i64* %12, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* @S_OK, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i64, i64* %12, align 8
  %140 = call i32 (i32, i8*, i64, ...) @ok(i32 %138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %139)
  %141 = load i64, i64* %12, align 8
  %142 = call i64 @FAILED(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %122
  br label %164

145:                                              ; preds = %122
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* @strmC_name, align 4
  %148 = load i64, i64* %10, align 8
  %149 = call i64 @IStream_Write(i32* %146, i32 %147, i64 %148, i64* %11)
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* @S_OK, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp eq i64 %154, %155
  br label %157

157:                                              ; preds = %153, %145
  %158 = phi i1 [ false, %145 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* %10, align 8
  %163 = call i32 (i32, i8*, i64, ...) @ok(i32 %159, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %160, i64 %161, i64 %162)
  br label %164

164:                                              ; preds = %157, %144, %109, %92, %57, %40
  %165 = load i32*, i32** %7, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @IStream_Release(i32* %168)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32*, i32** %6, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @IStream_Release(i32* %174)
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i32*, i32** %4, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @IStorage_Release(i32* %180)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32*, i32** %5, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 @IStream_Release(i32* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32*, i32** %3, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32*, i32** %3, align 8
  %193 = call i32 @IStorage_Release(i32* %192)
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i64, i64* %12, align 8
  ret i64 %195
}

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i32, i32, i32, i32, i32**) #1

declare dso_local i64 @IStream_Write(i32*, i32, i64, i64*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
