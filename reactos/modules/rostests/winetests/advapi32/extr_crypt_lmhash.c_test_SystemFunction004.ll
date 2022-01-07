; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction004.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt_lmhash.c_test_SystemFunction004.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustring = type { i8*, i32, i32 }

@STATUS_INVALID_PARAMETER_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"function failed\0A\00", align 1
@STATUS_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"crypted length wrong\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"crypted value wrong\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"crypted data wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SystemFunction004 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SystemFunction004() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca [8 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.ustring, align 8
  %7 = alloca %struct.ustring, align 8
  %8 = alloca %struct.ustring, align 8
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 256)
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %12 = call i32 @memset(i8* %11, i32 0, i32 256)
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 256)
  %15 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 0
  store i8* null, i8** %15, align 8
  %16 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 0
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.ustring, %struct.ustring* %8, i32 0, i32 0
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.ustring, %struct.ustring* %8, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ustring, %struct.ustring* %8, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = call i32 @pSystemFunction004(%struct.ustring* %6, %struct.ustring* %7, %struct.ustring* %8)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @STATUS_INVALID_PARAMETER_2, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %31 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 1
  store i32 256, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 2
  store i32 256, i32* %33, align 4
  %34 = call i32 @pSystemFunction004(%struct.ustring* %6, %struct.ustring* %7, %struct.ustring* %8)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @STATUS_BUFFER_TOO_SMALL, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %41 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 1
  store i32 12, i32* %42, align 8
  %43 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 2
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  store i8 1, i8* %44, align 16
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 1
  store i8 2, i8* %45, align 1
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 2
  store i8 3, i8* %46, align 2
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 3
  store i8 4, i8* %47, align 1
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 8
  store i8 1, i8* %48, align 8
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 9
  store i8 2, i8* %49, align 1
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 10
  store i8 3, i8* %50, align 2
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 11
  store i8 4, i8* %51, align 1
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 6
  store i8 1, i8* %52, align 2
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %54 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 0
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 1
  store i32 6, i32* %55, align 8
  %56 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 2
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 1
  store i8 51, i8* %57, align 1
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %59 = getelementptr inbounds %struct.ustring, %struct.ustring* %8, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.ustring, %struct.ustring* %8, i32 0, i32 1
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.ustring, %struct.ustring* %8, i32 0, i32 2
  store i32 64, i32* %61, align 4
  %62 = call i32 @pSystemFunction004(%struct.ustring* %6, %struct.ustring* %7, %struct.ustring* %8)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @STATUS_SUCCESS, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 6
  store i8 0, i8* %68, align 2
  %69 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %70 = call i32 @memset(i8* %69, i32 0, i32 8)
  %71 = getelementptr inbounds %struct.ustring, %struct.ustring* %8, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %76 = call i32 @pSystemFunction002(i8* %72, i8* %74, i8* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @STATUS_SUCCESS, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %83 = bitcast i8* %82 to i32*
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 1
  %86 = getelementptr inbounds %struct.ustring, %struct.ustring* %6, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %85, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %91 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %92 = bitcast i8* %91 to i32*
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 1
  %95 = icmp eq i32 %94, 1
  %96 = zext i1 %95 to i32
  %97 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %98 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %99 = call i32 @memset(i8* %98, i32 0, i32 8)
  %100 = getelementptr inbounds %struct.ustring, %struct.ustring* %8, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 8
  %103 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %106 = call i32 @pSystemFunction002(i8* %102, i8* %104, i8* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @STATUS_SUCCESS, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %112 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %114 = call i32 @memcmp(i8* %112, i8* %113, i32 8)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %119 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %120 = call i32 @memset(i8* %119, i32 0, i32 8)
  %121 = getelementptr inbounds %struct.ustring, %struct.ustring* %8, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 16
  %124 = getelementptr inbounds %struct.ustring, %struct.ustring* %7, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %127 = call i32 @pSystemFunction002(i8* %123, i8* %125, i8* %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @STATUS_SUCCESS, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %133 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %135 = call i32 @memcmp(i8* %133, i8* %134, i32 8)
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @pSystemFunction004(%struct.ustring*, %struct.ustring*, %struct.ustring*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @pSystemFunction002(i8*, i8*, i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
