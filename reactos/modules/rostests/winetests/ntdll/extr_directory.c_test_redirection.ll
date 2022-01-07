; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_directory.c_test_redirection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_directory.c_test_redirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Wow64 redirection not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"RtlWow64EnableFsRedirectionEx failed status %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"RtlWow64EnableFsRedirectionEx got %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@STATUS_ACCESS_VIOLATION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"RtlWow64EnableFsRedirectionEx failed with status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_redirection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_redirection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @FALSE, align 4
  %5 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %4, i32* %1)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %122

11:                                               ; preds = %0
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %18, i32* %2)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %32, i32* %2)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %40, i32* %2)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @pRtlWow64EnableFsRedirection(i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %61, i32* %2)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %2, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @TRUE, align 4
  %76 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %75, i32* null)
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %83, i32* inttoptr (i64 1 to i32*))
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @TRUE, align 4
  %92 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %91, i32* inttoptr (i64 3735928559 to i32*))
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @STATUS_ACCESS_VIOLATION, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @FALSE, align 4
  %100 = call i32 @pRtlWow64EnableFsRedirection(i32 %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @FALSE, align 4
  %108 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %107, i32* %2)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %2, align 4
  %116 = icmp eq i32 %115, 1
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %1, align 4
  %121 = call i32 @pRtlWow64EnableFsRedirectionEx(i32 %120, i32* %2)
  br label %122

122:                                              ; preds = %11, %9
  ret void
}

declare dso_local i32 @pRtlWow64EnableFsRedirectionEx(i32, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @pRtlWow64EnableFsRedirection(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
