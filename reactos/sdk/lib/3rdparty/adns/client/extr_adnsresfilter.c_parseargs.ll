; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_parseargs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_parseargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"no non-option arguments are allowed\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--timeout\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"--timeout needs a value\00", align 1
@forever = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"--wait\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"--brackets\00", align 1
@bracket = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"--address\00", align 1
@address = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"--unchecked\00", align 1
@adns_r_ptr_raw = common dso_local global i32 0, align 4
@rrt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"--config\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"--config needs a value\00", align 1
@config_text = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"--debug\00", align 1
@adns_if_debug = common dso_local global i32 0, align 4
@initflags = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"adnsresfilter\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"unknown long option\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"-t needs a value\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"unknown short option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @parseargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseargs(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  br label %5

5:                                                ; preds = %146, %1
  %6 = load i8**, i8*** %2, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %7, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %147

10:                                               ; preds = %5
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 45
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @usageerr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %105

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load i8**, i8*** %2, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %2, align 8
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %3, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @usageerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @settimeout(i8* %36)
  store i32 0, i32* @forever, align 4
  br label %104

38:                                               ; preds = %24
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 1, i32* @forever, align 4
  br label %103

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 1, i32* @bracket, align 4
  br label %102

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 1, i32* @address, align 4
  br label %101

53:                                               ; preds = %48
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @adns_r_ptr_raw, align 4
  store i32 %58, i32* @rrt, align 4
  br label %100

59:                                               ; preds = %53
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load i8**, i8*** %2, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %2, align 8
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %3, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = call i32 @usageerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i8*, i8** %3, align 8
  store i8* %71, i8** @config_text, align 8
  br label %99

72:                                               ; preds = %59
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @adns_if_debug, align 4
  %78 = load i32, i32* @initflags, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* @initflags, align 4
  br label %98

80:                                               ; preds = %72
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = call i32 (...) @usage()
  %86 = call i32 @quitnow(i32 0)
  br label %97

87:                                               ; preds = %80
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = call i32 @VERSION_PRINT_QUIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %93 = call i32 @quitnow(i32 0)
  br label %96

94:                                               ; preds = %87
  %95 = call i32 @usageerr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  br label %97

97:                                               ; preds = %96, %84
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %70
  br label %100

100:                                              ; preds = %99, %57
  br label %101

101:                                              ; preds = %100, %52
  br label %102

102:                                              ; preds = %101, %47
  br label %103

103:                                              ; preds = %102, %42
  br label %104

104:                                              ; preds = %103, %35
  br label %146

105:                                              ; preds = %18
  br label %106

106:                                              ; preds = %144, %105
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %3, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  store i32 %110, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  switch i32 %113, label %142 [
    i32 116, label %114
    i32 119, label %134
    i32 98, label %135
    i32 97, label %136
    i32 117, label %137
    i32 104, label %139
  ]

114:                                              ; preds = %112
  %115 = load i8*, i8** %3, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %3, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 @settimeout(i8* %120)
  br label %133

122:                                              ; preds = %114
  %123 = load i8**, i8*** %2, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %2, align 8
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %3, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i8*, i8** %3, align 8
  %129 = call i32 @settimeout(i8* %128)
  br label %132

130:                                              ; preds = %122
  %131 = call i32 @usageerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127
  br label %133

133:                                              ; preds = %132, %119
  store i32 0, i32* @forever, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %144

134:                                              ; preds = %112
  store i32 1, i32* @forever, align 4
  br label %144

135:                                              ; preds = %112
  store i32 1, i32* @bracket, align 4
  br label %144

136:                                              ; preds = %112
  store i32 1, i32* @address, align 4
  br label %144

137:                                              ; preds = %112
  %138 = load i32, i32* @adns_r_ptr_raw, align 4
  store i32 %138, i32* @rrt, align 4
  br label %144

139:                                              ; preds = %112
  %140 = call i32 (...) @usage()
  %141 = call i32 @quitnow(i32 0)
  br label %142

142:                                              ; preds = %112, %139
  %143 = call i32 @usageerr(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %137, %136, %135, %134, %133
  br label %106

145:                                              ; preds = %106
  br label %146

146:                                              ; preds = %145, %104
  br label %5

147:                                              ; preds = %5
  ret void
}

declare dso_local i32 @usageerr(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @settimeout(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @quitnow(i32) #1

declare dso_local i32 @VERSION_PRINT_QUIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
