; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_HashLink.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_HashLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_HashLink.hash_targetW = private unnamed_addr constant [15 x i8] c"afile#ananchor\00", align 1
@__const.test_HashLink.two_hash_targetW = private unnamed_addr constant [23 x i8] c"afile#ananchor#another\00", align 16
@__const.test_HashLink.hash_no_tgtW = private unnamed_addr constant [10 x i8] c"#ananchor\00", align 1
@__const.test_HashLink.tgt_partW = private unnamed_addr constant [6 x i8] c"afile\00", align 1
@__const.test_HashLink.loc_partW = private unnamed_addr constant [9 x i8] c"ananchor\00", align 1
@__const.test_HashLink.two_hash_loc_partW = private unnamed_addr constant [17 x i8] c"ananchor#another\00", align 16
@__const.test_HashLink.test_locW = private unnamed_addr constant [8 x i8] c"testloc\00", align 1
@IID_IHlink = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"HlinkCreateFromString failed: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Didn't get an hlink\0A\00", align 1
@HLINKGETREF_RELATIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Found moniker should not be NULL\0A\00", align 1
@HLINKSETF_TARGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Found moniker should be NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HashLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HashLink() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [15 x i8], align 1
  %4 = alloca [23 x i8], align 16
  %5 = alloca [10 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [9 x i8], align 1
  %8 = alloca [17 x i8], align 16
  %9 = alloca [8 x i8], align 1
  %10 = alloca i64, align 8
  %11 = bitcast [15 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.test_HashLink.hash_targetW, i32 0, i32 0), i64 15, i1 false)
  %12 = bitcast [23 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.test_HashLink.two_hash_targetW, i32 0, i32 0), i64 23, i1 false)
  %13 = bitcast [10 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.test_HashLink.hash_no_tgtW, i32 0, i32 0), i64 10, i1 false)
  %14 = bitcast [6 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.test_HashLink.tgt_partW, i32 0, i32 0), i64 6, i1 false)
  %15 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.test_HashLink.loc_partW, i32 0, i32 0), i64 9, i1 false)
  %16 = bitcast [17 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.test_HashLink.two_hash_loc_partW, i32 0, i32 0), i64 17, i1 false)
  %17 = bitcast [8 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_HashLink.test_locW, i32 0, i32 0), i64 8, i1 false)
  %18 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %19 = bitcast i32** %1 to i8*
  %20 = call i64 @HlinkCreateFromString(i8* %18, i8* null, i32* null, i32* null, i32 0, i32* null, i32* @IID_IHlink, i8* %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %10, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %1, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %0
  %34 = load i32*, i32** %1, align 8
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %36 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %37 = call i32 @getStringRef(i32* %34, i8* %35, i8* %36)
  %38 = load i32*, i32** %1, align 8
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %40 = load i32, i32* @HLINKGETREF_RELATIVE, align 4
  %41 = call i32* @getMonikerRef(i32* %38, i32* inttoptr (i64 4294967295 to i32*), i8* %39, i32 %40)
  store i32* %41, i32** %2, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %2, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @IMoniker_Release(i32* %49)
  br label %51

51:                                               ; preds = %48, %33
  %52 = load i32*, i32** %1, align 8
  %53 = load i32, i32* @HLINKSETF_TARGET, align 4
  %54 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %55 = call i32 @setStringRef(i32* %52, i32 %53, i8* %54, i32* null)
  %56 = load i32*, i32** %1, align 8
  %57 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %59 = call i32 @getStringRef(i32* %56, i8* %57, i8* %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @IHlink_Release(i32* %60)
  br label %62

62:                                               ; preds = %51, %0
  %63 = getelementptr inbounds [23 x i8], [23 x i8]* %4, i64 0, i64 0
  %64 = bitcast i32** %1 to i8*
  %65 = call i64 @HlinkCreateFromString(i8* %63, i8* null, i32* null, i32* null, i32 0, i32* null, i32* @IID_IHlink, i8* %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %10, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32*, i32** %1, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %99

78:                                               ; preds = %62
  %79 = load i32*, i32** %1, align 8
  %80 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %81 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %82 = call i32 @getStringRef(i32* %79, i8* %80, i8* %81)
  %83 = load i32*, i32** %1, align 8
  %84 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %85 = load i32, i32* @HLINKGETREF_RELATIVE, align 4
  %86 = call i32* @getMonikerRef(i32* %83, i32* inttoptr (i64 4294967295 to i32*), i8* %84, i32 %85)
  store i32* %86, i32** %2, align 8
  %87 = load i32*, i32** %2, align 8
  %88 = icmp ne i32* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32*, i32** %2, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i32*, i32** %2, align 8
  %95 = call i32 @IMoniker_Release(i32* %94)
  br label %96

96:                                               ; preds = %93, %78
  %97 = load i32*, i32** %1, align 8
  %98 = call i32 @IHlink_Release(i32* %97)
  br label %99

99:                                               ; preds = %96, %62
  %100 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %102 = bitcast i32** %1 to i8*
  %103 = call i64 @HlinkCreateFromString(i8* %100, i8* %101, i32* null, i32* null, i32 0, i32* null, i32* @IID_IHlink, i8* %102)
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @S_OK, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %10, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %108)
  %110 = load i32*, i32** %1, align 8
  %111 = icmp ne i32* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32*, i32** %1, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %137

116:                                              ; preds = %99
  %117 = load i32*, i32** %1, align 8
  %118 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %120 = call i32 @getStringRef(i32* %117, i8* %118, i8* %119)
  %121 = load i32*, i32** %1, align 8
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %123 = load i32, i32* @HLINKGETREF_RELATIVE, align 4
  %124 = call i32* @getMonikerRef(i32* %121, i32* inttoptr (i64 4294967295 to i32*), i8* %122, i32 %123)
  store i32* %124, i32** %2, align 8
  %125 = load i32*, i32** %2, align 8
  %126 = icmp ne i32* %125, null
  %127 = zext i1 %126 to i32
  %128 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i32*, i32** %2, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load i32*, i32** %2, align 8
  %133 = call i32 @IMoniker_Release(i32* %132)
  br label %134

134:                                              ; preds = %131, %116
  %135 = load i32*, i32** %1, align 8
  %136 = call i32 @IHlink_Release(i32* %135)
  br label %137

137:                                              ; preds = %134, %99
  %138 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %139 = bitcast i32** %1 to i8*
  %140 = call i64 @HlinkCreateFromString(i8* %138, i8* null, i32* null, i32* null, i32 0, i32* null, i32* @IID_IHlink, i8* %139)
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @S_OK, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %10, align 8
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %145)
  %147 = load i32*, i32** %1, align 8
  %148 = icmp ne i32* %147, null
  %149 = zext i1 %148 to i32
  %150 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32*, i32** %1, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %173

153:                                              ; preds = %137
  %154 = load i32*, i32** %1, align 8
  %155 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %156 = call i32 @getStringRef(i32* %154, i8* null, i8* %155)
  %157 = load i32*, i32** %1, align 8
  %158 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %159 = load i32, i32* @HLINKGETREF_RELATIVE, align 4
  %160 = call i32* @getMonikerRef(i32* %157, i32* inttoptr (i64 4294967295 to i32*), i8* %158, i32 %159)
  store i32* %160, i32** %2, align 8
  %161 = load i32*, i32** %2, align 8
  %162 = icmp eq i32* %161, null
  %163 = zext i1 %162 to i32
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i32*, i32** %2, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %153
  %168 = load i32*, i32** %2, align 8
  %169 = call i32 @IMoniker_Release(i32* %168)
  br label %170

170:                                              ; preds = %167, %153
  %171 = load i32*, i32** %1, align 8
  %172 = call i32 @IHlink_Release(i32* %171)
  br label %173

173:                                              ; preds = %170, %137
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @HlinkCreateFromString(i8*, i8*, i32*, i32*, i32, i32*, i32*, i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @getStringRef(i32*, i8*, i8*) #2

declare dso_local i32* @getMonikerRef(i32*, i32*, i8*, i32) #2

declare dso_local i32 @IMoniker_Release(i32*) #2

declare dso_local i32 @setStringRef(i32*, i32, i8*, i32*) #2

declare dso_local i32 @IHlink_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
