; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_wrk_lookup.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_wrk_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, i32, i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to resolve %s:%s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @script_wrk_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @script_wrk_lookup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.addrinfo, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  store i32* %0, i32** %2, align 8
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  store %struct.addrinfo* null, %struct.addrinfo** %11, align 8
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 1
  %13 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 2
  %15 = load i32, i32* @AF_UNSPEC, align 4
  store i32 %15, i32* %14, align 4
  store i32 1, i32* %6, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @lua_tostring(i32* %16, i32 -2)
  store i8* %17, i8** %7, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i8* @lua_tostring(i32* %18, i32 -1)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @getaddrinfo(i8* %20, i8* %21, %struct.addrinfo* %4, %struct.addrinfo** %3)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @gai_strerror(i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29, i8* %30)
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %1
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_newtable(i32* %34)
  %36 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  store %struct.addrinfo* %36, %struct.addrinfo** %10, align 8
  br label %37

37:                                               ; preds = %48, %33
  %38 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %39 = icmp ne %struct.addrinfo* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32*, i32** %2, align 8
  %42 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %43 = call i32 @script_addr_clone(i32* %41, %struct.addrinfo* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = call i32 @lua_rawseti(i32* %44, i32 -2, i32 %45)
  br label %48

48:                                               ; preds = %40
  %49 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 0
  %51 = load %struct.addrinfo*, %struct.addrinfo** %50, align 8
  store %struct.addrinfo* %51, %struct.addrinfo** %10, align 8
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %54 = call i32 @freeaddrinfo(%struct.addrinfo* %53)
  ret i32 1
}

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @script_addr_clone(i32*, %struct.addrinfo*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
