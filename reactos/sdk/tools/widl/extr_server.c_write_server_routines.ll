; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_server.c_write_server_routines.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_server.c_write_server_routines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@server = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"struct __server_frame\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"    __DECL_EXCEPTION_FRAME\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"    MIDL_STUB_MESSAGE _StubMsg;\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"static int __server_filter( struct __server_frame *__frame )\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"    return (__frame->code == STATUS_ACCESS_VIOLATION) ||\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"           (__frame->code == STATUS_DATATYPE_MISALIGNMENT) ||\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"           (__frame->code == RPC_X_BAD_STUB_DATA) ||\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"           (__frame->code == RPC_S_INVALID_BOUND);\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@indent = common dso_local global i32 0, align 4
@need_stub = common dso_local global i32 0, align 4
@server_token = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @write_server_routines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_server_routines(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @need_inline_stubs_file(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @server, align 4
  %10 = call i32 @write_exceptions(i32 %9)
  %11 = call i32 @print_server(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @print_server(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @print_server(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @print_server(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @print_server(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @print_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %17 = call i32 @print_server(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @print_server(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %19 = call i32 @print_server(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @print_server(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0))
  %21 = call i32 @print_server(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 @print_server(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  %23 = call i32 @print_server(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %24 = call i32 @print_server(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %25 = call i32 @print_server(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %8, %1
  %27 = load i32, i32* @server, align 4
  %28 = load i32, i32* @indent, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @need_stub, align 4
  %31 = call i32 @write_formatstringsdecl(i32 %27, i32 %28, i32* %29, i32 %30)
  %32 = load i32, i32* @server, align 4
  %33 = load i32, i32* @server_token, align 4
  %34 = call i32 @write_expr_eval_routines(i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @server, align 4
  %39 = load i32, i32* @server_token, align 4
  %40 = call i32 @write_expr_eval_routine_list(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %26
  %42 = load i32, i32* @server, align 4
  %43 = call i32 @write_user_quad_list(i32 %42)
  %44 = call i32 (...) @write_rundown_routines()
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @write_server_stmts(i32* %45, i32 %46, i32* %3)
  %48 = load i32, i32* @server, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @need_stub, align 4
  %51 = call i32 @write_procformatstring(i32 %48, i32* %49, i32 %50)
  %52 = load i32, i32* @server, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @need_stub, align 4
  %55 = call i32 @write_typeformatstring(i32 %52, i32* %53, i32 %54)
  ret void
}

declare dso_local i64 @need_inline_stubs_file(i32*) #1

declare dso_local i32 @write_exceptions(i32) #1

declare dso_local i32 @print_server(i8*) #1

declare dso_local i32 @write_formatstringsdecl(i32, i32, i32*, i32) #1

declare dso_local i32 @write_expr_eval_routines(i32, i32) #1

declare dso_local i32 @write_expr_eval_routine_list(i32, i32) #1

declare dso_local i32 @write_user_quad_list(i32) #1

declare dso_local i32 @write_rundown_routines(...) #1

declare dso_local i32 @write_server_stmts(i32*, i32, i32*) #1

declare dso_local i32 @write_procformatstring(i32, i32*, i32) #1

declare dso_local i32 @write_typeformatstring(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
