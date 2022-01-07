; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_enum_objects.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_enum_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OLECONTF_EMBEDDINGS = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"EnumObjects failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"enum_unknown == NULL\0A\00", align 1
@S_FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Next returned %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fetched = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"buf[0] = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_enum_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_enum_objects(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [100 x i8*], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = bitcast [100 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 800, i1 false)
  %8 = bitcast i8* %7 to <{ i8*, [99 x i8*] }>*
  %9 = getelementptr inbounds <{ i8*, [99 x i8*] }>, <{ i8*, [99 x i8*] }>* %8, i32 0, i32 0
  store i8* inttoptr (i64 3735928559 to i8*), i8** %9, align 16
  store i32* null, i32** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @OLECONTF_EMBEDDINGS, align 4
  %12 = call i8* @IOleContainer_EnumObjects(i32* %10, i32 %11, i32** %3)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** @S_OK, align 8
  %15 = icmp eq i8* %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i8* inttoptr (i64 3735928559 to i8*), i8** %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds [100 x i8*], [100 x i8*]* %4, i64 0, i64 0
  %25 = call i8* @IEnumUnknown_Next(i32* %23, i32 100, i8** %24, i8** %5)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** @S_FALSE, align 8
  %28 = icmp eq i8* %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  %38 = getelementptr inbounds [100 x i8*], [100 x i8*]* %4, i64 0, i64 0
  %39 = load i8*, i8** %38, align 16
  %40 = icmp eq i8* %39, inttoptr (i64 3735928559 to i8*)
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds [100 x i8*], [100 x i8*]* %4, i64 0, i64 0
  %43 = load i8*, i8** %42, align 16
  %44 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %5, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds [100 x i8*], [100 x i8*]* %4, i64 0, i64 0
  %47 = call i8* @IEnumUnknown_Next(i32* %45, i32 1, i8** %46, i8** %5)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** @S_FALSE, align 8
  %50 = icmp eq i8* %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds [100 x i8*], [100 x i8*]* %4, i64 0, i64 0
  %62 = call i8* @IEnumUnknown_Next(i32* %60, i32 1, i8** %61, i8** null)
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8*, i8** @S_FALSE, align 8
  %65 = icmp eq i8* %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @IEnumUnknown_Release(i32* %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @IOleContainer_EnumObjects(i32*, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @IEnumUnknown_Next(i32*, i32, i8**, i8**) #2

declare dso_local i32 @IEnumUnknown_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
