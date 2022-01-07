; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_config_parse_encap_limit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_config_parse_encap_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@IP6_TNL_F_IGN_ENCAP_LIMIT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed to parse Tunnel Encapsulation Limit option, ignoring: %s\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Invalid Tunnel Encapsulation value, ignoring: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_encap_limit(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %25 = load i8*, i8** %21, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %26, %struct.TYPE_2__** %22, align 8
  store i32 0, i32* %23, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %19, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %19, align 8
  %34 = call i64 @streq(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %10
  %37 = load i32, i32* @IP6_TNL_F_IGN_ENCAP_LIMIT, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %79

42:                                               ; preds = %10
  %43 = load i8*, i8** %19, align 8
  %44 = call i32 @safe_atoi(i8* %43, i32* %23)
  store i32 %44, i32* %24, align 4
  %45 = load i32, i32* %24, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* @LOG_ERR, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %24, align 4
  %53 = load i8*, i8** %19, align 8
  %54 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @log_syntax(i8* %48, i32 %49, i8* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i32 0, i32* %11, align 4
  br label %80

55:                                               ; preds = %42
  %56 = load i32, i32* %23, align 4
  %57 = icmp sgt i32 %56, 255
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %23, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %12, align 8
  %63 = load i32, i32* @LOG_ERR, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %23, align 4
  %67 = call i32 (i8*, i32, i8*, i32, i32, i8*, ...) @log_syntax(i8* %62, i32 %63, i8* %64, i32 %65, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %78

68:                                               ; preds = %58
  %69 = load i32, i32* %23, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @IP6_TNL_F_IGN_ENCAP_LIMIT, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %68, %61
  br label %79

79:                                               ; preds = %78, %36
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %47
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @safe_atoi(i8*, i32*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
