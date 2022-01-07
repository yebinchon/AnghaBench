; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_dump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-scope.c_dns_scope_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i8* }

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"[Scope protocol=\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" interface=\00", align 1
@AF_UNSPEC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c" family=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ZONE:\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"CACHE:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns_scope_dump(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_6__* %5)
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** @stdout, align 8
  store i32* %10, i32** %4, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @dns_protocol_to_string(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @fputs(i8* %17, i32* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %11
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @fputs(i8* %31, i32* %32)
  br label %34

34:                                               ; preds = %24, %11
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_UNSPEC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @af_to_name(i64 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @fputs(i8* %46, i32* %47)
  br label %49

49:                                               ; preds = %40, %34
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = call i32 @dns_zone_is_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @dns_zone_dump(i32* %60, i32* %61)
  br label %63

63:                                               ; preds = %56, %49
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = call i32 @dns_cache_is_empty(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @dns_cache_dump(i32* %72, i32* %73)
  br label %75

75:                                               ; preds = %68, %63
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @dns_protocol_to_string(i32) #1

declare dso_local i8* @af_to_name(i64) #1

declare dso_local i32 @dns_zone_is_empty(i32*) #1

declare dso_local i32 @dns_zone_dump(i32*, i32*) #1

declare dso_local i32 @dns_cache_is_empty(i32*) #1

declare dso_local i32 @dns_cache_dump(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
