; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_filbuf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_file.c_test_filbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"filbuf.tst\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A\0A\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"read wrong byte\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"ascii crlf removal does not match native\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"fgetpos fail\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"ftell does not match fgetpos\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_filbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filbuf() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 4, i32* %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @fclose(i32* %7)
  %9 = call i32* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @_filbuf(i32* %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 10
  %14 = zext i1 %13 to i32
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @ftell(i32* %16)
  %18 = icmp eq i32 %17, -2
  %19 = zext i1 %18 to i32
  %20 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i32*, i32** %1, align 8
  %22 = call i64 @fgetpos(i32* %21, i32* %3)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, -2
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @fclose(i32* %30)
  %32 = call i32 @unlink(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @_filbuf(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @fgetpos(i32*, i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
