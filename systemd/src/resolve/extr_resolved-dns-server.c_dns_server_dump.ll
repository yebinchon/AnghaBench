; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_dns_server_dump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_dns_server_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_7__* }

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"[Server \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" type=\00", align 1
@DNS_SERVER_LINK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c" interface=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\09Verified feature level: \00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\09Possible feature level: \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\09DNSSEC Mode: \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\09Can do DNSSEC: \00", align 1
@.str.8 = private unnamed_addr constant [174 x i8] c"\09Maximum UDP packet size received: %zu\0A\09Failed UDP attempts: %u\0A\09Failed TCP attempts: %u\0A\09Seen truncated packet: %s\0A\09Seen OPT RR getting lost: %s\0A\09Seen RRSIG RR missing: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns_server_dump(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_7__* %5)
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** @stdout, align 8
  store i32* %10, i32** %4, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i8* @dns_server_string(%struct.TYPE_7__* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fputs(i8* %15, i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i8* @dns_server_type_to_string(i64 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fputs(i8* %23, i32* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DNS_SERVER_LINK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %11
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 10
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i32 @assert(%struct.TYPE_7__* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 10
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fputs(i8* %42, i32* %43)
  br label %45

45:                                               ; preds = %31, %11
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dns_server_feature_level_to_string(i32 %52)
  %54 = call i8* @strna(i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fputs(i8* %54, i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @fputc(i8 signext 10, i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dns_server_feature_level_to_string(i32 %63)
  %65 = call i8* @strna(i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @fputs(i8* %65, i32* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @fputc(i8 signext 10, i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = call i32 @dns_server_get_dnssec_mode(%struct.TYPE_7__* %72)
  %74 = call i32 @dnssec_mode_to_string(i32 %73)
  %75 = call i8* @strna(i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @fputs(i8* %75, i32* %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @fputc(i8 signext 10, i32* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32* %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = call i32 @dns_server_dnssec_supported(%struct.TYPE_7__* %82)
  %84 = call i8* @yes_no(i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @fputs(i8* %84, i32* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @fputc(i8 signext 10, i32* %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @yes_no(i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @yes_no(i32 %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @yes_no(i32 %109)
  %111 = call i32 @fprintf(i32* %89, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.8, i64 0, i64 0), i32 %92, i32 %95, i8* %98, i8* %102, i8* %106, i8* %110)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @dns_server_string(%struct.TYPE_7__*) #1

declare dso_local i8* @dns_server_type_to_string(i64) #1

declare dso_local i8* @strna(i32) #1

declare dso_local i32 @dns_server_feature_level_to_string(i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @dnssec_mode_to_string(i32) #1

declare dso_local i32 @dns_server_get_dnssec_mode(%struct.TYPE_7__*) #1

declare dso_local i8* @yes_no(i32) #1

declare dso_local i32 @dns_server_dnssec_supported(%struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
