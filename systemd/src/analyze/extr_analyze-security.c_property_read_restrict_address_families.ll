; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_property_read_restrict_address_families.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_property_read_restrict_address_families.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.security_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"bas\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"AF_INET\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"AF_INET6\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"AF_UNIX\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"AF_NETLINK\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"AF_PACKET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*, i8*)* @property_read_restrict_address_families to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_read_restrict_address_families(i8* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.security_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.security_info*
  store %struct.security_info* %17, %struct.security_info** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @assert(i8* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @assert(i8* %22)
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @sd_bus_message_enter_container(i8* %24, i8 signext 114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %132

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 (i8*, i8*, ...) @sd_bus_message_read(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %132

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.security_info*, %struct.security_info** %12, align 8
  %40 = getelementptr inbounds %struct.security_info, %struct.security_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.security_info*, %struct.security_info** %12, align 8
  %42 = getelementptr inbounds %struct.security_info, %struct.security_info* %41, i32 0, i32 3
  store i32 %38, i32* %42, align 4
  %43 = load %struct.security_info*, %struct.security_info** %12, align 8
  %44 = getelementptr inbounds %struct.security_info, %struct.security_info* %43, i32 0, i32 2
  store i32 %38, i32* %44, align 4
  %45 = load %struct.security_info*, %struct.security_info** %12, align 8
  %46 = getelementptr inbounds %struct.security_info, %struct.security_info* %45, i32 0, i32 1
  store i32 %38, i32* %46, align 4
  %47 = load %struct.security_info*, %struct.security_info** %12, align 8
  %48 = getelementptr inbounds %struct.security_info, %struct.security_info* %47, i32 0, i32 0
  store i32 %38, i32* %48, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @sd_bus_message_enter_container(i8* %49, i8 signext 97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %132

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %121, %55
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 (i8*, i8*, ...) @sd_bus_message_read(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %15)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %132

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %122

67:                                               ; preds = %63
  %68 = load i8*, i8** %15, align 8
  %69 = call i64 @STR_IN_SET(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.security_info*, %struct.security_info** %12, align 8
  %77 = getelementptr inbounds %struct.security_info, %struct.security_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %121

78:                                               ; preds = %67
  %79 = load i8*, i8** %15, align 8
  %80 = call i64 @streq(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load %struct.security_info*, %struct.security_info** %12, align 8
  %88 = getelementptr inbounds %struct.security_info, %struct.security_info* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %120

89:                                               ; preds = %78
  %90 = load i8*, i8** %15, align 8
  %91 = call i64 @streq(i8* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load %struct.security_info*, %struct.security_info** %12, align 8
  %99 = getelementptr inbounds %struct.security_info, %struct.security_info* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %119

100:                                              ; preds = %89
  %101 = load i8*, i8** %15, align 8
  %102 = call i64 @streq(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load %struct.security_info*, %struct.security_info** %12, align 8
  %110 = getelementptr inbounds %struct.security_info, %struct.security_info* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  br label %118

111:                                              ; preds = %100
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load %struct.security_info*, %struct.security_info** %12, align 8
  %117 = getelementptr inbounds %struct.security_info, %struct.security_info* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %104
  br label %119

119:                                              ; preds = %118, %93
  br label %120

120:                                              ; preds = %119, %82
  br label %121

121:                                              ; preds = %120, %71
  br label %56

122:                                              ; preds = %66
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @sd_bus_message_exit_container(i8* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %6, align 4
  br label %132

129:                                              ; preds = %122
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @sd_bus_message_exit_container(i8* %130)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %129, %127, %61, %53, %35, %28
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @sd_bus_message_enter_container(i8*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(i8*, i8*, ...) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_bus_message_exit_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
