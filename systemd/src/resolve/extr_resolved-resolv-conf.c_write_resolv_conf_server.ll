; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-resolv-conf.c_write_resolv_conf_server.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-resolv-conf.c_write_resolv_conf_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"Out of memory, or invalid DNS address. Ignoring server.\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Scope of DNS server %s has only route-only domains, not using as global name server\00", align 1
@MAXNS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"# Too many DNS servers configured, the following entries may be ignored.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"nameserver %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @write_resolv_conf_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_resolv_conf_server(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @assert(i32* %8)
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @dns_server_string(i32* %14)
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = call i32 @log_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %48

19:                                               ; preds = %3
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @dns_server_scope(i32* %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @dns_scope_is_default_route(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @dns_server_string(i32* %29)
  %31 = call i32 @log_debug(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %48

32:                                               ; preds = %24, %19
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAXNS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @fputs(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @dns_server_string(i32* %45)
  %47 = call i32 @fprintf(i32* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %40, %28, %17
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i8* @dns_server_string(i32*) #1

declare dso_local i32 @log_warning(i8*) #1

declare dso_local i32* @dns_server_scope(i32*) #1

declare dso_local i32 @dns_scope_is_default_route(i32*) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
