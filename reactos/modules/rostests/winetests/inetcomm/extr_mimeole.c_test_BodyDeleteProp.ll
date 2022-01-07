; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_BodyDeleteProp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_BodyDeleteProp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i8* }

@test_BodyDeleteProp.topic = internal constant [11 x i8] c"wine topic\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@HBODY_ROOT = common dso_local global i32 0, align 4
@IID_IMimeBody = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Subject\00", align 1
@MIME_E_NOT_FOUND = common dso_local global i64 0, align 8
@PID_HDR_SUBJECT = common dso_local global i32 0, align 4
@VT_LPSTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_BodyDeleteProp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_BodyDeleteProp() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = call i64 @MimeOleCreateMessage(i32* null, i32** %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = call i32 @PropVariantInit(%struct.TYPE_8__* %4)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @HBODY_ROOT, align 4
  %15 = bitcast i32** %3 to i8**
  %16 = call i64 @IMimeMessage_BindToObject(i32* %13, i32 %14, i32* @IID_IMimeBody, i8** %15)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @IMimeBody_DeleteProp(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @MIME_E_NOT_FOUND, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @PID_HDR_SUBJECT, align 4
  %33 = call i8* @PIDTOSTR(i32 %32)
  %34 = call i64 @IMimeBody_DeleteProp(i32* %31, i8* %33)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @MIME_E_NOT_FOUND, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %1, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i8*, i8** @VT_LPSTR, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_BodyDeleteProp.topic, i64 0, i64 0))
  %44 = add nsw i64 %43, 1
  %45 = call i8* @CoTaskMemAlloc(i64 %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_BodyDeleteProp.topic, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @IMimeBody_SetProp(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.TYPE_8__* %4)
  store i64 %53, i64* %1, align 8
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @S_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %1, align 8
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @IMimeBody_DeleteProp(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @IMimeBody_GetProp(i32* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.TYPE_8__* %4)
  store i64 %70, i64* %1, align 8
  %71 = load i64, i64* %1, align 8
  %72 = load i64, i64* @MIME_E_NOT_FOUND, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %1, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i8*, i8** @VT_LPSTR, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  %79 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_BodyDeleteProp.topic, i64 0, i64 0))
  %80 = add nsw i64 %79, 1
  %81 = call i8* @CoTaskMemAlloc(i64 %80)
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strcpy(i8* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_BodyDeleteProp.topic, i64 0, i64 0))
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* @PID_HDR_SUBJECT, align 4
  %90 = call i8* @PIDTOSTR(i32 %89)
  %91 = call i64 @IMimeBody_SetProp(i32* %88, i8* %90, i32 0, %struct.TYPE_8__* %4)
  store i64 %91, i64* %1, align 8
  %92 = load i64, i64* %1, align 8
  %93 = load i64, i64* @S_OK, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %1, align 8
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %96)
  %98 = call i32 @PropVariantClear(%struct.TYPE_8__* %4)
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @PID_HDR_SUBJECT, align 4
  %101 = call i8* @PIDTOSTR(i32 %100)
  %102 = call i64 @IMimeBody_DeleteProp(i32* %99, i8* %101)
  store i64 %102, i64* %1, align 8
  %103 = load i64, i64* %1, align 8
  %104 = load i64, i64* @S_OK, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i64, i64* %1, align 8
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* @PID_HDR_SUBJECT, align 4
  %111 = call i8* @PIDTOSTR(i32 %110)
  %112 = call i64 @IMimeBody_GetProp(i32* %109, i8* %111, i32 0, %struct.TYPE_8__* %4)
  store i64 %112, i64* %1, align 8
  %113 = load i64, i64* %1, align 8
  %114 = load i64, i64* @MIME_E_NOT_FOUND, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %1, align 8
  %118 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %117)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @IMimeBody_Release(i32* %119)
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @IMimeMessage_Release(i32* %121)
  ret void
}

declare dso_local i64 @MimeOleCreateMessage(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_8__*) #1

declare dso_local i64 @IMimeMessage_BindToObject(i32*, i32, i32*, i8**) #1

declare dso_local i64 @IMimeBody_DeleteProp(i32*, i8*) #1

declare dso_local i8* @PIDTOSTR(i32) #1

declare dso_local i8* @CoTaskMemAlloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @IMimeBody_SetProp(i32*, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_8__*) #1

declare dso_local i64 @IMimeBody_GetProp(i32*, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @IMimeBody_Release(i32*) #1

declare dso_local i32 @IMimeMessage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
