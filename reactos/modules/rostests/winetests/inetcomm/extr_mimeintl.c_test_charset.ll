; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_test_charset.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeintl.c_test_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"nonexistent\00", align 1
@MIME_E_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"windows-1252\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"got different hcharsets for the same name\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"WiNdoWs-1252\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"windows-1251\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"got the same hcharset for the different names\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"cpiWindows %d while mlang uiCodePage %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"cpiInternet %d while mlang uiInternetEncoding %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"hCharset doesn't match requested\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"szName doesn't match requested\0A\00", align 1
@CHARSET_BODY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_charset() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = call i64 @MimeOleGetInternat(i32** %1)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %2, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @IMimeInternational_FindCharset(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* %3)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @MIME_E_NOT_FOUND, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %2, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i64 @IMimeInternational_FindCharset(i32* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64* %4)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %2, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i64 @IMimeInternational_FindCharset(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64* %3)
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %2, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32*, i32** %1, align 8
  %45 = call i64 @IMimeInternational_FindCharset(i32* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64* %3)
  store i64 %45, i64* %2, align 8
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %2, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32*, i32** %1, align 8
  %58 = call i64 @IMimeInternational_FindCharset(i32* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64* %5)
  store i64 %58, i64* %2, align 8
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %2, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32*, i32** %1, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @IMimeInternational_GetCharsetInfo(i32* %70, i64 %71, %struct.TYPE_7__* %6)
  store i64 %72, i64* %2, align 8
  %73 = load i64, i64* %2, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %2, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = call i64 @mlang_getcsetinfo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_6__* %7)
  store i64 %79, i64* %2, align 8
  %80 = load i64, i64* %2, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %2, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %87, %89
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i64 %93, i64 %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %98, %100
  %102 = zext i1 %101 to i32
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i64 %104, i64 %106)
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %4, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @strcmp(i32 %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %121 = load i32*, i32** %1, align 8
  %122 = load i32, i32* @CHARSET_BODY, align 4
  %123 = call i64 @IMimeInternational_GetCodePageCharset(i32* %121, i32 1252, i32 %122, i64* %3)
  store i64 %123, i64* %2, align 8
  %124 = load i64, i64* %2, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i64, i64* %2, align 8
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** %1, align 8
  %131 = load i64, i64* %3, align 8
  %132 = call i64 @IMimeInternational_GetCharsetInfo(i32* %130, i64 %131, %struct.TYPE_7__* %6)
  store i64 %132, i64* %2, align 8
  %133 = load i64, i64* %2, align 8
  %134 = load i64, i64* @S_OK, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i64, i64* %2, align 8
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %137)
  %139 = load i32, i32* @CHARSET_BODY, align 4
  %140 = call i64 @mlang_getcsetinfo_from_cp(i32 1252, i32 %139, %struct.TYPE_6__* %7)
  store i64 %140, i64* %2, align 8
  %141 = load i64, i64* %2, align 8
  %142 = load i64, i64* @S_OK, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %2, align 8
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %145)
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %148, %150
  %152 = zext i1 %151 to i32
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i64 %154, i64 %156)
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %159, %161
  %163 = zext i1 %162 to i32
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i64 %165, i64 %167)
  %169 = load i32*, i32** %1, align 8
  %170 = call i32 @IMimeInternational_Release(i32* %169)
  ret void
}

declare dso_local i64 @MimeOleGetInternat(i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IMimeInternational_FindCharset(i32*, i8*, i64*) #1

declare dso_local i64 @IMimeInternational_GetCharsetInfo(i32*, i64, %struct.TYPE_7__*) #1

declare dso_local i64 @mlang_getcsetinfo(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @IMimeInternational_GetCodePageCharset(i32*, i32, i32, i64*) #1

declare dso_local i64 @mlang_getcsetinfo_from_cp(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @IMimeInternational_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
