; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_client_routines.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_client.c_write_client_routines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@indent = common dso_local global i32 0, align 4
@need_stub = common dso_local global i32 0, align 4
@client_token = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @write_client_routines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_client_routines(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @need_inline_stubs_file(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @client, align 4
  %10 = call i32 @write_exceptions(i32 %9)
  %11 = call i32 @print_client(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @client, align 4
  %14 = load i32, i32* @indent, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @need_stub, align 4
  %17 = call i32 @write_formatstringsdecl(i32 %13, i32 %14, i32* %15, i32 %16)
  %18 = load i32, i32* @client, align 4
  %19 = load i32, i32* @client_token, align 4
  %20 = call i32 @write_expr_eval_routines(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load i32, i32* @client, align 4
  %25 = load i32, i32* @client_token, align 4
  %26 = call i32 @write_expr_eval_routine_list(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %12
  %28 = call i32 (...) @write_generic_handle_routine_list()
  %29 = load i32, i32* @client, align 4
  %30 = call i32 @write_user_quad_list(i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @write_client_ifaces(i32* %31, i32 %32, i32* %3)
  %34 = load i32, i32* @client, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @client, align 4
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @need_stub, align 4
  %39 = call i32 @write_procformatstring(i32 %36, i32* %37, i32 %38)
  %40 = load i32, i32* @client, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @need_stub, align 4
  %43 = call i32 @write_typeformatstring(i32 %40, i32* %41, i32 %42)
  ret void
}

declare dso_local i64 @need_inline_stubs_file(i32*) #1

declare dso_local i32 @write_exceptions(i32) #1

declare dso_local i32 @print_client(i8*) #1

declare dso_local i32 @write_formatstringsdecl(i32, i32, i32*, i32) #1

declare dso_local i32 @write_expr_eval_routines(i32, i32) #1

declare dso_local i32 @write_expr_eval_routine_list(i32, i32) #1

declare dso_local i32 @write_generic_handle_routine_list(...) #1

declare dso_local i32 @write_user_quad_list(i32) #1

declare dso_local i32 @write_client_ifaces(i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @write_procformatstring(i32, i32*, i32) #1

declare dso_local i32 @write_typeformatstring(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
