; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_widl.c_rm_tempfile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_widl.c_rm_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temp_name = common dso_local global i64 0, align 8
@do_header = common dso_local global i64 0, align 8
@header_name = common dso_local global i64 0, align 8
@local_stubs_name = common dso_local global i64 0, align 8
@do_client = common dso_local global i64 0, align 8
@client_name = common dso_local global i64 0, align 8
@do_server = common dso_local global i64 0, align 8
@server_name = common dso_local global i64 0, align 8
@do_regscript = common dso_local global i64 0, align 8
@regscript_name = common dso_local global i64 0, align 8
@do_idfile = common dso_local global i64 0, align 8
@idfile_name = common dso_local global i64 0, align 8
@do_proxies = common dso_local global i64 0, align 8
@proxy_name = common dso_local global i64 0, align 8
@do_typelib = common dso_local global i64 0, align 8
@typelib_name = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rm_tempfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm_tempfile() #0 {
  %1 = call i32 (...) @abort_import()
  %2 = load i64, i64* @temp_name, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @temp_name, align 8
  %6 = call i32 @unlink(i64 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @do_header, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i64, i64* @header_name, align 8
  %12 = call i32 @unlink(i64 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i64, i64* @local_stubs_name, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* @local_stubs_name, align 8
  %18 = call i32 @unlink(i64 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i64, i64* @do_client, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i64, i64* @client_name, align 8
  %24 = call i32 @unlink(i64 %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* @do_server, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* @server_name, align 8
  %30 = call i32 @unlink(i64 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i64, i64* @do_regscript, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* @regscript_name, align 8
  %36 = call i32 @unlink(i64 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i64, i64* @do_idfile, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* @idfile_name, align 8
  %42 = call i32 @unlink(i64 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* @do_proxies, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* @proxy_name, align 8
  %48 = call i32 @unlink(i64 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i64, i64* @do_typelib, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* @typelib_name, align 8
  %54 = call i32 @unlink(i64 %53)
  br label %55

55:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @abort_import(...) #1

declare dso_local i32 @unlink(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
