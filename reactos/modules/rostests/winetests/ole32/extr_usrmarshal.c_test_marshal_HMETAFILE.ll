; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HMETAFILE.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HMETAFILE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MSHCTX_DIFFERENTMACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"size should be at least 20 bytes, not %d\0A\00", align 1
@WDT_REMOTE_CALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"wirestgm + 0x0 should be WDT_REMOTE_CALL instead of 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"wirestgm + 0x4 should be hmf instead of 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"wirestgm + 0x8 should be size - 0x10 instead of 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"wirestgm + 0xc should be size - 0x10 instead of 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"wirestgm + 0x10 should be 1 instead of 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"HMETAFILE didn't unmarshal\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"size should be 8 bytes, not %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"NULL HMETAFILE didn't unmarshal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal_HMETAFILE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_HMETAFILE() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* null, i32** %7, align 8
  %9 = call i32* (...) @create_mf()
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %11 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %13 = call i32 @HMETAFILE_UserSize(i32* %12, i32 0, i32** %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 20
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @HeapAlloc(i32 %19, i32 0, i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %25 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %22, i32 %23, i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @HMETAFILE_UserMarshal(i32* %26, i8* %27, i32** %6)
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WDT_REMOTE_CALL, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i8*, i8** %8, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = ptrtoint i32* %45 to i64
  %47 = trunc i64 %46 to i32
  %48 = icmp eq i32 %44, %47
  %49 = zext i1 %48 to i32
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sub nsw i32 %59, 16
  %61 = icmp eq i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = load i8*, i8** %8, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 16
  %74 = icmp eq i32 %71, %73
  %75 = zext i1 %74 to i32
  %76 = load i8*, i8** %8, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = load i8*, i8** %8, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %96 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %93, i32 %94, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @HMETAFILE_UserUnmarshal(i32* %97, i8* %98, i32** %7)
  %100 = load i32*, i32** %7, align 8
  %101 = icmp ne i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %104 = call i32 (...) @GetProcessHeap()
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @HeapFree(i32 %104, i32 0, i8* %105)
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %108 = call i32 @HMETAFILE_UserFree(i32* %107, i32** %7)
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @DeleteMetaFile(i32* %109)
  store i32* null, i32** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %112 = call i32 @HMETAFILE_UserSize(i32* %111, i32 0, i32** %6)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 8
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %5, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  %118 = call i32 (...) @GetProcessHeap()
  %119 = load i32, i32* %5, align 4
  %120 = call i8* @HeapAlloc(i32 %118, i32 0, i32 %119)
  store i8* %120, i8** %4, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %124 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %121, i32 %122, i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @HMETAFILE_UserMarshal(i32* %125, i8* %126, i32** %6)
  %128 = load i8*, i8** %4, align 8
  store i8* %128, i8** %8, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @WDT_REMOTE_CALL, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i8*, i8** %8, align 8
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i8*, i8** %8, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 4
  store i8* %140, i8** %8, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = bitcast i8* %141 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = ptrtoint i32* %144 to i64
  %146 = trunc i64 %145 to i32
  %147 = icmp eq i32 %143, %146
  %148 = zext i1 %147 to i32
  %149 = load i8*, i8** %8, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 4
  store i8* %154, i8** %8, align 8
  %155 = load i8*, i8** %4, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %158 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %155, i32 %156, i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %160 = load i8*, i8** %4, align 8
  %161 = call i32 @HMETAFILE_UserUnmarshal(i32* %159, i8* %160, i32** %7)
  %162 = load i32*, i32** %7, align 8
  %163 = icmp eq i32* %162, null
  %164 = zext i1 %163 to i32
  %165 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %166 = call i32 (...) @GetProcessHeap()
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 @HeapFree(i32 %166, i32 0, i8* %167)
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %170 = call i32 @HMETAFILE_UserFree(i32* %169, i32** %7)
  ret void
}

declare dso_local i32* @create_mf(...) #1

declare dso_local i32 @init_user_marshal_cb(%struct.TYPE_3__*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @HMETAFILE_UserSize(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HMETAFILE_UserMarshal(i32*, i8*, i32**) #1

declare dso_local i32 @HMETAFILE_UserUnmarshal(i32*, i8*, i32**) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @HMETAFILE_UserFree(i32*, i32**) #1

declare dso_local i32 @DeleteMetaFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
