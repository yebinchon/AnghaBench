; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_init_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_init_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tested_protocol = common dso_local global i32 0, align 4
@TEST_BINDING = common dso_local global i32 0, align 4
@binding_test = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@first_data_notif = common dso_local global i8* null, align 8
@prot_read = common dso_local global i64 0, align 8
@prot_state = common dso_local global i64 0, align 8
@async_read_pending = common dso_local global i8* null, align 8
@TEST_FILTER = common dso_local global i32 0, align 4
@mimefilter_test = common dso_local global i32 0, align 4
@TEST_NOMIME = common dso_local global i32 0, align 4
@no_mime = common dso_local global i32 0, align 4
@filter_state = common dso_local global i64 0, align 8
@post_stream_read = common dso_local global i64 0, align 8
@event_complete = common dso_local global i32 0, align 4
@event_complete2 = common dso_local global i32 0, align 4
@event_continue = common dso_local global i32 0, align 4
@event_continue_done = common dso_local global i32 0, align 4
@filtered_protocol = common dso_local global i32* null, align 8
@binding_protocol = common dso_local global i32 0, align 4
@async_protocol = common dso_local global i32 0, align 4
@filtered_sink = common dso_local global i32* null, align 8
@TEST_FIRST_HTTP = common dso_local global i32 0, align 4
@http_is_first = common dso_local global i32 0, align 4
@STATE_CONNECTING = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@TEST_ASYNCREQ = common dso_local global i32 0, align 4
@test_async_req = common dso_local global i32 0, align 4
@TEST_DIRECT_READ = common dso_local global i32 0, align 4
@direct_read = common dso_local global i32 0, align 4
@TEST_EMULATEPROT = common dso_local global i32 0, align 4
@emulate_prot = common dso_local global i32 0, align 4
@wait_for_switch = common dso_local global i8* null, align 8
@TEST_SHORT_READ = common dso_local global i32 0, align 4
@short_read = common dso_local global i32 0, align 4
@TYMED_NULL = common dso_local global i32 0, align 4
@http_post_test = common dso_local global i32 0, align 4
@TEST_REDIRECT = common dso_local global i32 0, align 4
@test_redirect = common dso_local global i32 0, align 4
@redirect_on_continue = common dso_local global i32 0, align 4
@TEST_ABORT = common dso_local global i32 0, align 4
@test_abort = common dso_local global i32 0, align 4
@TEST_IMPLPROTEX = common dso_local global i32 0, align 4
@impl_protex = common dso_local global i32 0, align 4
@TEST_EMPTY = common dso_local global i32 0, align 4
@empty_file = common dso_local global i32 0, align 4
@TEST_FROMCACHE = common dso_local global i32 0, align 4
@bind_from_cache = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@file_with_hash = common dso_local global i8* null, align 8
@security_problem = common dso_local global i8* null, align 8
@reuse_protocol_thread = common dso_local global i8* null, align 8
@bindinfo_options = common dso_local global i32 0, align 4
@TEST_DISABLEAUTOREDIRECT = common dso_local global i32 0, align 4
@BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @init_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* @tested_protocol, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TEST_BINDING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* @binding_test, align 4
  %11 = load i8*, i8** @TRUE, align 8
  store i8* %11, i8** @first_data_notif, align 8
  store i64 0, i64* @prot_read, align 8
  store i64 0, i64* @prot_state, align 8
  %12 = load i8*, i8** @TRUE, align 8
  store i8* %12, i8** @async_read_pending, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TEST_FILTER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @mimefilter_test, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TEST_NOMIME, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* @no_mime, align 4
  store i64 0, i64* @filter_state, align 8
  store i64 0, i64* @post_stream_read, align 8
  %23 = load i32, i32* @event_complete, align 4
  %24 = call i32 @ResetEvent(i32 %23)
  %25 = load i32, i32* @event_complete2, align 4
  %26 = call i32 @ResetEvent(i32 %25)
  %27 = load i32, i32* @event_continue, align 4
  %28 = call i32 @ResetEvent(i32 %27)
  %29 = load i32, i32* @event_continue_done, align 4
  %30 = call i32 @ResetEvent(i32 %29)
  store i32* null, i32** @filtered_protocol, align 8
  store i32 0, i32* @binding_protocol, align 4
  store i32 0, i32* @async_protocol, align 4
  store i32* null, i32** @filtered_sink, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @TEST_FIRST_HTTP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* @http_is_first, align 4
  %36 = load i8*, i8** @TRUE, align 8
  store i8* %36, i8** @first_data_notif, align 8
  %37 = load i32, i32* @STATE_CONNECTING, align 4
  store i32 %37, i32* @state, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @TEST_ASYNCREQ, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* @test_async_req, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @TEST_DIRECT_READ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* @direct_read, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TEST_EMULATEPROT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* @emulate_prot, align 4
  %53 = load i8*, i8** @TRUE, align 8
  store i8* %53, i8** @wait_for_switch, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @TEST_SHORT_READ, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* @short_read, align 4
  %59 = load i32, i32* @TYMED_NULL, align 4
  store i32 %59, i32* @http_post_test, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @TEST_REDIRECT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* @test_redirect, align 4
  store i32 %64, i32* @redirect_on_continue, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @TEST_ABORT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* @test_abort, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @TEST_IMPLPROTEX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* @impl_protex, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @TEST_EMPTY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* @empty_file, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @TEST_FROMCACHE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  store i32 %84, i32* @bind_from_cache, align 4
  %85 = load i8*, i8** @FALSE, align 8
  store i8* %85, i8** @file_with_hash, align 8
  %86 = load i8*, i8** @FALSE, align 8
  store i8* %86, i8** @security_problem, align 8
  %87 = load i8*, i8** @FALSE, align 8
  store i8* %87, i8** @reuse_protocol_thread, align 8
  store i32 0, i32* @bindinfo_options, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @TEST_DISABLEAUTOREDIRECT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %2
  %93 = load i32, i32* @BINDINFO_OPTIONS_DISABLEAUTOREDIRECTS, align 4
  %94 = load i32, i32* @bindinfo_options, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* @bindinfo_options, align 4
  br label %96

96:                                               ; preds = %92, %2
  %97 = load i32, i32* @mimefilter_test, align 4
  %98 = call i32 @register_filter(i32 %97)
  ret void
}

declare dso_local i32 @ResetEvent(i32) #1

declare dso_local i32 @register_filter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
