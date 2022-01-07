; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-settings.c_config_parse_private_users.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-settings.c_config_parse_private_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8* }

@USER_NAMESPACE_NO = common dso_local global i8* null, align 8
@UID_INVALID = common dso_local global i8* null, align 8
@USER_NAMESPACE_FIXED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"pick\00", align 1
@USER_NAMESPACE_PICK = common dso_local global i8* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"UID/GID range invalid, ignoring: %s\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"UID/GID shift invalid, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_private_users(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
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
  %28 = load i8*, i8** %20, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %22, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @assert(i8* %30)
  %32 = load i8*, i8** %17, align 8
  %33 = call i32 @assert(i8* %32)
  %34 = load i8*, i8** %19, align 8
  %35 = call i32 @assert(i8* %34)
  %36 = load i8*, i8** %19, align 8
  %37 = call i32 @parse_boolean(i8* %36)
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* %23, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %10
  %41 = load i8*, i8** @USER_NAMESPACE_NO, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @UID_INVALID, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = call i64 @UINT32_C(i32 65536)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %138

50:                                               ; preds = %10
  %51 = load i32, i32* %23, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i8*, i8** @USER_NAMESPACE_FIXED, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @UID_INVALID, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = call i64 @UINT32_C(i32 65536)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %137

63:                                               ; preds = %50
  %64 = load i8*, i8** %19, align 8
  %65 = call i64 @streq(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i8*, i8** @USER_NAMESPACE_PICK, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @UID_INVALID, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = call i64 @UINT32_C(i32 65536)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %136

77:                                               ; preds = %63
  %78 = load i8*, i8** %19, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 58)
  store i8* %79, i8** %24, align 8
  %80 = load i8*, i8** %24, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %109

82:                                               ; preds = %77
  %83 = load i8*, i8** %19, align 8
  %84 = load i8*, i8** %24, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @strndupa(i8* %83, i32 %89)
  store i8* %90, i8** %25, align 8
  %91 = load i8*, i8** %24, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %24, align 8
  %93 = load i8*, i8** %24, align 8
  %94 = call i32 @safe_atou32(i8* %93, i64* %27)
  store i32 %94, i32* %23, align 4
  %95 = load i32, i32* %23, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %82
  %98 = load i64, i64* %27, align 8
  %99 = icmp sle i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97, %82
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* @LOG_ERR, align 4
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %23, align 4
  %106 = load i8*, i8** %24, align 8
  %107 = call i32 @log_syntax(i8* %101, i32 %102, i8* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  store i32 0, i32* %11, align 4
  br label %139

108:                                              ; preds = %97
  br label %112

109:                                              ; preds = %77
  %110 = load i8*, i8** %19, align 8
  store i8* %110, i8** %25, align 8
  %111 = call i64 @UINT32_C(i32 65536)
  store i64 %111, i64* %27, align 8
  br label %112

112:                                              ; preds = %109, %108
  %113 = load i8*, i8** %25, align 8
  %114 = call i32 @parse_uid(i8* %113, i64* %26)
  store i32 %114, i32* %23, align 4
  %115 = load i32, i32* %23, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* @LOG_ERR, align 4
  %120 = load i8*, i8** %13, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %23, align 4
  %123 = load i8*, i8** %24, align 8
  %124 = call i32 @log_syntax(i8* %118, i32 %119, i8* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %123)
  store i32 0, i32* %11, align 4
  br label %139

125:                                              ; preds = %112
  %126 = load i8*, i8** @USER_NAMESPACE_FIXED, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i64, i64* %26, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i64, i64* %27, align 8
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %125, %67
  br label %137

137:                                              ; preds = %136, %53
  br label %138

138:                                              ; preds = %137, %40
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %138, %117, %100
  %140 = load i32, i32* %11, align 4
  ret i32 %140
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i64 @UINT32_C(i32) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndupa(i8*, i32) #1

declare dso_local i32 @safe_atou32(i8*, i64*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @parse_uid(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
