; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_mhtml_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_mhtml_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"MimeOleCreateMessage failed: %08x\0A\00", align 1
@mhtml_page1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Load failed: %08x\0A\00", align 1
@HBODY_ROOT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"CountBodies failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GetAttachments failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"count = %u\0A\00", align 1
@IID_IMimeBody = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"BindToObject failed: %08x\0A\00", align 1
@IET_BINARY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"GetData failed: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"<HTML></HTML>\00", align 1
@IET_QP = common dso_local global i32 0, align 4
@IET_BASE64 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mhtml_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mhtml_message() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @MimeOleCreateMessage(i32* null, i32** %1)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @S_OK, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @mhtml_page1, align 4
  %15 = call i32* @create_stream_from_string(i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @IMimeMessage_Load(i32* %16, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @IStream_Release(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @S_OK, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* @HBODY_ROOT, align 4
  %29 = load i32, i32* @TRUE, align 4
  %30 = call i32 @IMimeMessage_CountBodies(i32* %27, i32 %28, i32 %29, i32* %5)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 3
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @IMimeMessage_GetAttachments(i32* %42, i32* %5, i32** %3)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = bitcast i32** %2 to i8**
  %60 = call i32 @IMimeMessage_BindToObject(i32* %55, i32 %58, i32* @IID_IMimeBody, i8** %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @S_OK, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* @IET_BINARY, align 4
  %69 = call i32 @IMimeBody_GetData(i32* %67, i32 %68, i32** %4)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @S_OK, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @S_OK, align 4
  %78 = call i32 @test_stream_read(i32* %76, i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @IStream_Release(i32* %79)
  %81 = load i32*, i32** %2, align 8
  %82 = load i32, i32* @IET_QP, align 4
  %83 = call i32 @test_current_encoding(i32* %81, i32 %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @IMimeBody_Release(i32* %84)
  %86 = load i32*, i32** %1, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = bitcast i32** %2 to i8**
  %91 = call i32 @IMimeMessage_BindToObject(i32* %86, i32 %89, i32* @IID_IMimeBody, i8** %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @S_OK, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* @IET_BASE64, align 4
  %100 = call i32 @test_current_encoding(i32* %98, i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = load i32, i32* @IET_BINARY, align 4
  %103 = call i32 @IMimeBody_GetData(i32* %101, i32 %102, i32** %4)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @S_OK, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* @S_OK, align 4
  %112 = call i32 @test_stream_read(i32* %110, i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @IStream_Release(i32* %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @IMimeBody_Release(i32* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @CoTaskMemFree(i32* %117)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @IMimeMessage_Release(i32* %119)
  ret void
}

declare dso_local i32 @MimeOleCreateMessage(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32* @create_stream_from_string(i32) #1

declare dso_local i32 @IMimeMessage_Load(i32*, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IMimeMessage_CountBodies(i32*, i32, i32, i32*) #1

declare dso_local i32 @IMimeMessage_GetAttachments(i32*, i32*, i32**) #1

declare dso_local i32 @IMimeMessage_BindToObject(i32*, i32, i32*, i8**) #1

declare dso_local i32 @IMimeBody_GetData(i32*, i32, i32**) #1

declare dso_local i32 @test_stream_read(i32*, i32, i8*, i32) #1

declare dso_local i32 @test_current_encoding(i32*, i32) #1

declare dso_local i32 @IMimeBody_Release(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IMimeMessage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
