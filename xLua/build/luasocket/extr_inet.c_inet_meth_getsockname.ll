; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_meth_getsockname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_meth_getsockname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"uknown family\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_meth_getsockname(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [6 x i8], align 1
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 4, i32* %10, align 4
  %15 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %struct.sockaddr_storage* %9 to i32*
  %22 = call i64 @getsockname(i32 %20, i32* %21, i32* %10)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @lua_pushnil(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i8* @socket_strerror(i32 %28)
  %30 = call i32 @lua_pushstring(i32* %27, i8* %29)
  store i32 2, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %73

31:                                               ; preds = %3
  %32 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %36 = load i32, i32* @NI_NUMERICHOST, align 4
  %37 = load i32, i32* @NI_NUMERICSERV, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @getnameinfo(%struct.sockaddr* %32, i32 %33, i8* %18, i32 %34, i8* %35, i32 6, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @lua_pushnil(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @gai_strerror(i32 %46)
  %48 = call i32 @lua_pushstring(i32* %45, i8* %47)
  store i32 2, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %73

49:                                               ; preds = %31
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @lua_pushstring(i32* %50, i8* %18)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %54 = call i32 @lua_pushstring(i32* %52, i8* %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PF_INET, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @lua_pushliteral(i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %72

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PF_INET6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @lua_pushliteral(i32* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %71

68:                                               ; preds = %61
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @lua_pushliteral(i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %58
  store i32 3, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %73

73:                                               ; preds = %72, %42, %24
  %74 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getsockname(i32, i32*, i32*) #2

declare dso_local i32 @lua_pushnil(i32*) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

declare dso_local i8* @socket_strerror(i32) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #2

declare dso_local i8* @gai_strerror(i32) #2

declare dso_local i32 @lua_pushliteral(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
