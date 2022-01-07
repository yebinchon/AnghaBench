; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HENHMETAFILE.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_usrmarshal.c_test_marshal_HENHMETAFILE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MSHCTX_DIFFERENTMACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"size should be at least 24 bytes, not %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"got %p buffer %p\0A\00", align 1
@WDT_REMOTE_CALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"wirestgm + 0x0 should be WDT_REMOTE_CALL instead of 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"wirestgm + 0x4 should be hemf instead of 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"wirestgm + 0x8 should be size - 0x14 instead of 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"wirestgm + 0xc should be size - 0x14 instead of 0x%08x\0A\00", align 1
@EMR_HEADER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"wirestgm + 0x10 should be EMR_HEADER instead of %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"HENHMETAFILE didn't unmarshal\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"size should be 12 bytes, not %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"NULL HENHMETAFILE didn't unmarshal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_marshal_HENHMETAFILE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_HENHMETAFILE() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* null, i32** %8, align 8
  %10 = call i32* (...) @create_emf()
  store i32* %10, i32** %7, align 8
  %11 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %12 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %14 = call i32 @HENHMETAFILE_UserSize(i32* %13, i32 1, i32** %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 24
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @HeapAlloc(i32 %20, i32 0, i32 %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %26 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %23, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = call i8* @HENHMETAFILE_UserMarshal(i32* %27, i8* %29, i32** %7)
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = icmp eq i8* %31, %35
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WDT_REMOTE_CALL, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = ptrtoint i32* %58 to i64
  %60 = trunc i64 %59 to i32
  %61 = icmp eq i32 %57, %60
  %62 = zext i1 %61 to i32
  %63 = load i8*, i8** %9, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  store i8* %68, i8** %9, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 20
  %74 = icmp eq i32 %71, %73
  %75 = zext i1 %74 to i32
  %76 = load i8*, i8** %9, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %9, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 20
  %87 = icmp eq i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = load i8*, i8** %9, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 4
  store i8* %94, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @EMR_HEADER, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i8*, i8** %9, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %108 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %105, i32 %106, i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = call i8* @HENHMETAFILE_UserUnmarshal(i32* %109, i8* %111, i32** %8)
  store i8* %112, i8** %5, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = icmp eq i8* %113, %117
  %119 = zext i1 %118 to i32
  %120 = load i8*, i8** %5, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %120, i8* %121)
  %123 = load i32*, i32** %8, align 8
  %124 = icmp ne i32* %123, null
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %127 = call i32 (...) @GetProcessHeap()
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @HeapFree(i32 %127, i32 0, i8* %128)
  %130 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %131 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %133 = call i32 @HENHMETAFILE_UserFree(i32* %132, i32** %8)
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @DeleteEnhMetaFile(i32* %134)
  store i32* null, i32** %7, align 8
  %136 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %137 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %139 = call i32 @HENHMETAFILE_UserSize(i32* %138, i32 1, i32** %7)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 12
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %143)
  %145 = call i32 (...) @GetProcessHeap()
  %146 = load i32, i32* %6, align 4
  %147 = call i8* @HeapAlloc(i32 %145, i32 0, i32 %146)
  store i8* %147, i8** %4, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %151 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %148, i32 %149, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = call i8* @HENHMETAFILE_UserMarshal(i32* %152, i8* %154, i32** %7)
  store i8* %155, i8** %5, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = icmp eq i8* %156, %160
  %162 = zext i1 %161 to i32
  %163 = load i8*, i8** %5, align 8
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %163, i8* %164)
  %166 = load i8*, i8** %4, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 4
  store i8* %167, i8** %9, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @WDT_REMOTE_CALL, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i8*, i8** %9, align 8
  %175 = bitcast i8* %174 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %176)
  %178 = load i8*, i8** %9, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 4
  store i8* %179, i8** %9, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = bitcast i8* %180 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %7, align 8
  %184 = ptrtoint i32* %183 to i64
  %185 = trunc i64 %184 to i32
  %186 = icmp eq i32 %182, %185
  %187 = zext i1 %186 to i32
  %188 = load i8*, i8** %9, align 8
  %189 = bitcast i8* %188 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  %192 = load i8*, i8** %4, align 8
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %195 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* %192, i32 %193, i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %197 = load i8*, i8** %4, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  %199 = call i8* @HENHMETAFILE_UserUnmarshal(i32* %196, i8* %198, i32** %8)
  store i8* %199, i8** %5, align 8
  %200 = load i8*, i8** %5, align 8
  %201 = load i8*, i8** %4, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = icmp eq i8* %200, %204
  %206 = zext i1 %205 to i32
  %207 = load i8*, i8** %5, align 8
  %208 = load i8*, i8** %4, align 8
  %209 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %207, i8* %208)
  %210 = load i32*, i32** %8, align 8
  %211 = icmp eq i32* %210, null
  %212 = zext i1 %211 to i32
  %213 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %214 = call i32 (...) @GetProcessHeap()
  %215 = load i8*, i8** %4, align 8
  %216 = call i32 @HeapFree(i32 %214, i32 0, i8* %215)
  %217 = load i32, i32* @MSHCTX_DIFFERENTMACHINE, align 4
  %218 = call i32 @init_user_marshal_cb(%struct.TYPE_3__* %1, i32* %2, i32* %3, i8* null, i32 0, i32 %217)
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %220 = call i32 @HENHMETAFILE_UserFree(i32* %219, i32** %8)
  ret void
}

declare dso_local i32* @create_emf(...) #1

declare dso_local i32 @init_user_marshal_cb(%struct.TYPE_3__*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @HENHMETAFILE_UserSize(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HENHMETAFILE_UserMarshal(i32*, i8*, i32**) #1

declare dso_local i8* @HENHMETAFILE_UserUnmarshal(i32*, i8*, i32**) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @HENHMETAFILE_UserFree(i32*, i32**) #1

declare dso_local i32 @DeleteEnhMetaFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
