; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_next1.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty-keys.c_tty_keys_next1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.client* }
%struct.client = type { i32 }
%struct.tty_key = type { i64, %struct.tty_key* }
%struct.utf8_data = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"%s: next key is %zu (%.*s) (expired=%d)\00", align 1
@KEYC_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: keys in list: %#llx\00", align 1
@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: UTF-8 key %.*s %#llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i8*, i64, i64*, i64*, i32)* @tty_keys_next1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_keys_next1(%struct.tty* %0, i8* %1, i64 %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.client*, align 8
  %15 = alloca %struct.tty_key*, align 8
  %16 = alloca %struct.tty_key*, align 8
  %17 = alloca %struct.utf8_data, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.tty*, %struct.tty** %8, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 0
  %24 = load %struct.client*, %struct.client** %23, align 8
  store %struct.client* %24, %struct.client** %14, align 8
  %25 = load %struct.client*, %struct.client** %14, align 8
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %10, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i32 %31, i8* %32, i32 %33)
  %35 = load %struct.tty*, %struct.tty** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64*, i64** %12, align 8
  %39 = call %struct.tty_key* @tty_keys_find(%struct.tty* %35, i8* %36, i64 %37, i64* %38)
  store %struct.tty_key* %39, %struct.tty_key** %15, align 8
  %40 = load %struct.tty_key*, %struct.tty_key** %15, align 8
  %41 = icmp ne %struct.tty_key* %40, null
  br i1 %41, label %42, label %78

42:                                               ; preds = %6
  %43 = load %struct.tty_key*, %struct.tty_key** %15, align 8
  %44 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @KEYC_UNKNOWN, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = load %struct.tty_key*, %struct.tty_key** %15, align 8
  store %struct.tty_key* %49, %struct.tty_key** %16, align 8
  br label %50

50:                                               ; preds = %59, %48
  %51 = load %struct.client*, %struct.client** %14, align 8
  %52 = getelementptr inbounds %struct.client, %struct.client* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tty_key*, %struct.tty_key** %16, align 8
  %55 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %50
  %60 = load %struct.tty_key*, %struct.tty_key** %16, align 8
  %61 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %60, i32 0, i32 1
  %62 = load %struct.tty_key*, %struct.tty_key** %61, align 8
  store %struct.tty_key* %62, %struct.tty_key** %16, align 8
  %63 = icmp ne %struct.tty_key* %62, null
  br i1 %63, label %50, label %64

64:                                               ; preds = %59
  %65 = load %struct.tty_key*, %struct.tty_key** %15, align 8
  %66 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %65, i32 0, i32 1
  %67 = load %struct.tty_key*, %struct.tty_key** %66, align 8
  %68 = icmp ne %struct.tty_key* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 1, i32* %7, align 4
  br label %155

73:                                               ; preds = %69, %64
  %74 = load %struct.tty_key*, %struct.tty_key** %15, align 8
  %75 = getelementptr inbounds %struct.tty_key, %struct.tty_key* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %11, align 8
  store i64 %76, i64* %77, align 8
  store i32 0, i32* %7, align 4
  br label %155

78:                                               ; preds = %42, %6
  %79 = load i8*, i8** %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64*, i64** %12, align 8
  %82 = load i64*, i64** %11, align 8
  %83 = call i32 @xterm_keys_find(i8* %79, i64 %80, i64* %81, i64* %82)
  store i32 %83, i32* %21, align 4
  %84 = load i32, i32* %21, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %155

87:                                               ; preds = %78
  %88 = load i32, i32* %21, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store i32 1, i32* %7, align 4
  br label %155

94:                                               ; preds = %90, %87
  %95 = load i8*, i8** %9, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = call i32 @utf8_open(%struct.utf8_data* %17, i32 %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @UTF8_MORE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %154

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %12, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %106, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 1, i32* %7, align 4
  br label %155

114:                                              ; preds = %110
  store i32 -1, i32* %7, align 4
  br label %155

115:                                              ; preds = %102
  store i64 1, i64* %19, align 8
  br label %116

116:                                              ; preds = %128, %115
  %117 = load i64, i64* %19, align 8
  %118 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %117, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load i8*, i8** %9, align 8
  %123 = load i64, i64* %19, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = call i32 @utf8_append(%struct.utf8_data* %17, i32 %126)
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %121
  %129 = load i64, i64* %19, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %19, align 8
  br label %116

131:                                              ; preds = %116
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* @UTF8_DONE, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 -1, i32* %7, align 4
  br label %155

136:                                              ; preds = %131
  %137 = call i32 @utf8_combine(%struct.utf8_data* %17, i64* %20)
  %138 = load i32, i32* @UTF8_DONE, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 -1, i32* %7, align 4
  br label %155

141:                                              ; preds = %136
  %142 = load i64, i64* %20, align 8
  %143 = load i64*, i64** %11, align 8
  store i64 %142, i64* %143, align 8
  %144 = load %struct.client*, %struct.client** %14, align 8
  %145 = getelementptr inbounds %struct.client, %struct.client* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %17, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load i8*, i8** %9, align 8
  %151 = load i64*, i64** %11, align 8
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i8*, i32, i32, ...) @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %149, i8* %150, i64 %152)
  store i32 0, i32* %7, align 4
  br label %155

154:                                              ; preds = %94
  store i32 -1, i32* %7, align 4
  br label %155

155:                                              ; preds = %154, %141, %140, %135, %114, %113, %93, %86, %73, %72
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @log_debug(i8*, i32, i32, ...) #1

declare dso_local %struct.tty_key* @tty_keys_find(%struct.tty*, i8*, i64, i64*) #1

declare dso_local i32 @xterm_keys_find(i8*, i64, i64*, i64*) #1

declare dso_local i32 @utf8_open(%struct.utf8_data*, i32) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i32) #1

declare dso_local i32 @utf8_combine(%struct.utf8_data*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
