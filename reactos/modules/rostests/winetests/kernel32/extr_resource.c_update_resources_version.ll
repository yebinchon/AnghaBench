; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_update_resources_version.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_resource.c_update_resources_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.update_resources_version.foo = private unnamed_addr constant [14 x i8] c"red and white\00", align 1
@filename = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BeginUpdateResource failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"UpdateResource failed: %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"EndUpdateResource failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_resources_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_resources_version() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [14 x i8], align 1
  store i32* null, i32** %1, align 8
  %4 = bitcast [14 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.update_resources_version.foo, i32 0, i32 0), i64 14, i1 false)
  %5 = load i32, i32* @filename, align 4
  %6 = load i32, i32* @TRUE, align 4
  %7 = call i32* @BeginUpdateResourceA(i32 %5, i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @MAKEINTRESOURCEA(i32 4656)
  %14 = call i32 @MAKEINTRESOURCEA(i32 17767)
  %15 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %16 = call i32 @UpdateResourceA(i32* %12, i32 %13, i32 %14, i32 43981, i8* %15, i32 14)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @TRUE, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @EndUpdateResourceA(i32* %23, i32 %24)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (...) @GetLastError()
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @BeginUpdateResourceA(i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @UpdateResourceA(i32*, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @MAKEINTRESOURCEA(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @EndUpdateResourceA(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
