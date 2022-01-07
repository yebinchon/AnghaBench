; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_gethostbyname_hack.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_test_gethostbyname_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32, i32** }

@test_gethostbyname_hack.loopback = internal global [4 x i32] [i32 127, i32 0, i32 0, i32 1], align 16
@test_gethostbyname_hack.magic_loopback = internal global [4 x i32] [i32 127, i32 12, i32 34, i32 56], align 16
@.str = private unnamed_addr constant [31 x i8] c"gethostname() call failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"gethostbyname(\22localhost\22) failed: %d\0A\00", align 1
@h_errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"h_length is %d, not IPv4, skipping test.\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"gethostbyname(\22localhost\22) returned %u.%u.%u.%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"hostname seems to be \22localhost\22, skipping test.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"gethostbyname(\22%s\22) failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"gethostbyname(\22%s\22) returned %u.%u.%u.%u not 127.12.34.56\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"nonexistent.winehq.org\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gethostbyname_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gethostbyname_hack() #0 {
  %1 = alloca %struct.hostent*, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %5 = call i32 @gethostname(i8* %4, i32 256)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 (...) @WSAGetLastError()
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call %struct.hostent* @gethostbyname(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.hostent* %11, %struct.hostent** %1, align 8
  %12 = load %struct.hostent*, %struct.hostent** %1, align 8
  %13 = icmp ne %struct.hostent* %12, null
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @h_errno, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load %struct.hostent*, %struct.hostent** %1, align 8
  %18 = icmp ne %struct.hostent* %17, null
  br i1 %18, label %19, label %70

19:                                               ; preds = %0
  %20 = load %struct.hostent*, %struct.hostent** %1, align 8
  %21 = getelementptr inbounds %struct.hostent, %struct.hostent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 4
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.hostent*, %struct.hostent** %1, align 8
  %26 = getelementptr inbounds %struct.hostent, %struct.hostent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %151

29:                                               ; preds = %19
  %30 = load %struct.hostent*, %struct.hostent** %1, align 8
  %31 = getelementptr inbounds %struct.hostent, %struct.hostent* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.hostent*, %struct.hostent** %1, align 8
  %36 = getelementptr inbounds %struct.hostent, %struct.hostent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @memcmp(i32* %34, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_gethostbyname_hack.loopback, i64 0, i64 0), i32 %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load %struct.hostent*, %struct.hostent** %1, align 8
  %42 = getelementptr inbounds %struct.hostent, %struct.hostent* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hostent*, %struct.hostent** %1, align 8
  %49 = getelementptr inbounds %struct.hostent, %struct.hostent* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hostent*, %struct.hostent** %1, align 8
  %56 = getelementptr inbounds %struct.hostent, %struct.hostent* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hostent*, %struct.hostent** %1, align 8
  %63 = getelementptr inbounds %struct.hostent, %struct.hostent* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %54, i32 %61, i32 %68)
  br label %70

70:                                               ; preds = %29, %0
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %151

76:                                               ; preds = %70
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %78 = call %struct.hostent* @gethostbyname(i8* %77)
  store %struct.hostent* %78, %struct.hostent** %1, align 8
  %79 = load %struct.hostent*, %struct.hostent** %1, align 8
  %80 = icmp ne %struct.hostent* %79, null
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %83 = load i32, i32* @h_errno, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %82, i32 %83)
  %85 = load %struct.hostent*, %struct.hostent** %1, align 8
  %86 = icmp ne %struct.hostent* %85, null
  br i1 %86, label %87, label %149

87:                                               ; preds = %76
  %88 = load %struct.hostent*, %struct.hostent** %1, align 8
  %89 = getelementptr inbounds %struct.hostent, %struct.hostent* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 4
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.hostent*, %struct.hostent** %1, align 8
  %94 = getelementptr inbounds %struct.hostent, %struct.hostent* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %151

97:                                               ; preds = %87
  %98 = load %struct.hostent*, %struct.hostent** %1, align 8
  %99 = getelementptr inbounds %struct.hostent, %struct.hostent* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 127
  br i1 %105, label %106, label %148

106:                                              ; preds = %97
  %107 = load %struct.hostent*, %struct.hostent** %1, align 8
  %108 = getelementptr inbounds %struct.hostent, %struct.hostent* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.hostent*, %struct.hostent** %1, align 8
  %113 = getelementptr inbounds %struct.hostent, %struct.hostent* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @memcmp(i32* %111, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @test_gethostbyname_hack.magic_loopback, i64 0, i64 0), i32 %114)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %119 = load %struct.hostent*, %struct.hostent** %1, align 8
  %120 = getelementptr inbounds %struct.hostent, %struct.hostent* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.hostent*, %struct.hostent** %1, align 8
  %127 = getelementptr inbounds %struct.hostent, %struct.hostent* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.hostent*, %struct.hostent** %1, align 8
  %134 = getelementptr inbounds %struct.hostent, %struct.hostent* %133, i32 0, i32 1
  %135 = load i32**, i32*** %134, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.hostent*, %struct.hostent** %1, align 8
  %141 = getelementptr inbounds %struct.hostent, %struct.hostent* %140, i32 0, i32 1
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8* %118, i32 %125, i32 %132, i32 %139, i32 %146)
  br label %148

148:                                              ; preds = %106, %97
  br label %149

149:                                              ; preds = %148, %76
  %150 = call %struct.hostent* @gethostbyname(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %92, %74, %24
  ret void
}

declare dso_local i32 @gethostname(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i32 @skip(i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
