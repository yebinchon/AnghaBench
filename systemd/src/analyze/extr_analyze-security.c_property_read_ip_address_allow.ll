; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_property_read_ip_address_allow.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze-security.c_property_read_ip_address_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.security_info = type { i32, i32, i32 }
%union.in_addr_union = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"(iayu)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"iayu\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"IPAddressAllow\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"IPAddressDeny\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*, i8*)* @property_read_ip_address_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_read_ip_address_allow(i8* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.security_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %union.in_addr_union, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = bitcast i8* %21 to %struct.security_info*
  store %struct.security_info* %22, %struct.security_info** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @assert(i8* %23)
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @sd_bus_message_enter_container(i8* %29, i8 signext 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %6, align 4
  br label %165

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %151, %109, %35
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @sd_bus_message_enter_container(i8* %37, i8 signext 114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %6, align 4
  br label %165

43:                                               ; preds = %36
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %152

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 (i8*, i8*, ...) @sd_bus_message_read(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64* %18)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %6, align 4
  br label %165

54:                                               ; preds = %47
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @sd_bus_message_read_array(i8* %55, i8 signext 121, i8** %16, i64* %17)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %165

61:                                               ; preds = %54
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 (i8*, i8*, ...) @sd_bus_message_read(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %19)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %6, align 4
  br label %165

68:                                               ; preds = %61
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @sd_bus_message_exit_container(i8* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %6, align 4
  br label %165

75:                                               ; preds = %68
  %76 = load i8*, i8** %8, align 8
  %77 = call i8* @streq(i8* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %124

79:                                               ; preds = %75
  %80 = load i64, i64* %18, align 8
  %81 = load i64, i64* @AF_INET, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i64, i64* %17, align 8
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* %19, align 4
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = bitcast %union.in_addr_union* %20 to i32*
  %91 = load i8*, i8** %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = call i32 @memcpy(i32* %90, i8* %91, i64 %92)
  br label %113

94:                                               ; preds = %86, %83, %79
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* @AF_INET6, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i64, i64* %17, align 8
  %100 = icmp eq i64 %99, 16
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* %19, align 4
  %103 = icmp eq i32 %102, 128
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = bitcast %union.in_addr_union* %20 to i32*
  %106 = load i8*, i8** %16, align 8
  %107 = load i64, i64* %17, align 8
  %108 = call i32 @memcpy(i32* %105, i8* %106, i64 %107)
  br label %112

109:                                              ; preds = %101, %98, %94
  %110 = load %struct.security_info*, %struct.security_info** %12, align 8
  %111 = getelementptr inbounds %struct.security_info, %struct.security_info* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  br label %36

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %89
  %114 = load i64, i64* %18, align 8
  %115 = call i64 @in_addr_is_localhost(i64 %114, %union.in_addr_union* %20)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.security_info*, %struct.security_info** %12, align 8
  %119 = getelementptr inbounds %struct.security_info, %struct.security_info* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  br label %123

120:                                              ; preds = %113
  %121 = load %struct.security_info*, %struct.security_info** %12, align 8
  %122 = getelementptr inbounds %struct.security_info, %struct.security_info* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %151

124:                                              ; preds = %75
  %125 = load i8*, i8** %8, align 8
  %126 = call i8* @streq(i8* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %127 = call i32 @assert(i8* %126)
  %128 = load i64, i64* %18, align 8
  %129 = load i64, i64* @AF_INET, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load i64, i64* %17, align 8
  %133 = icmp eq i64 %132, 4
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* %19, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 1, i32* %13, align 4
  br label %150

138:                                              ; preds = %134, %131, %124
  %139 = load i64, i64* %18, align 8
  %140 = load i64, i64* @AF_INET6, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load i64, i64* %17, align 8
  %144 = icmp eq i64 %143, 16
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* %19, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 1, i32* %14, align 4
  br label %149

149:                                              ; preds = %148, %145, %142, %138
  br label %150

150:                                              ; preds = %149, %137
  br label %151

151:                                              ; preds = %150, %123
  br label %36

152:                                              ; preds = %46
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i1 [ false, %152 ], [ %157, %155 ]
  %160 = zext i1 %159 to i32
  %161 = load %struct.security_info*, %struct.security_info** %12, align 8
  %162 = getelementptr inbounds %struct.security_info, %struct.security_info* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @sd_bus_message_exit_container(i8* %163)
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %158, %73, %66, %59, %52, %41, %33
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @sd_bus_message_enter_container(i8*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_read(i8*, i8*, ...) #1

declare dso_local i32 @sd_bus_message_read_array(i8*, i8 signext, i8**, i64*) #1

declare dso_local i32 @sd_bus_message_exit_container(i8*) #1

declare dso_local i8* @streq(i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i64 @in_addr_is_localhost(i64, %union.in_addr_union*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
