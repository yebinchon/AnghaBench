; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_system_journal_open.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-server.c_system_journal_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__, i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32 }

@STORAGE_PERSISTENT = common dso_local global i64 0, align 8
@STORAGE_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"/var/log/journal/\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"/system.journal\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to open system journal: %m\00", align 1
@STORAGE_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to open runtime journal: %m\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/run/log\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"/run/log/journal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @system_journal_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @system_journal_open(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %99, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @STORAGE_PERSISTENT, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @STORAGE_AUTO, align 4
  %21 = call i64 @IN_SET(i32 %17, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %99

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = call i64 (...) @flushed_flag_is_set()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %99

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %99, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* @STORAGE_PERSISTENT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @mkdir_p(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 493)
  br label %41

41:                                               ; preds = %39, %32
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @mkdir(i8* %45, i32 493)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @strjoina(i8* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** %8, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @O_RDWR, align 4
  %55 = load i32, i32* @O_CREAT, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 4
  %65 = call i32 @open_journal(%struct.TYPE_8__* %52, i32 1, i8* %53, i32 %56, i32 %59, i32* %62, i64* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %41
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @server_add_acls(i64 %71, i32 0)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  %76 = call i32 @cache_space_refresh(%struct.TYPE_8__* %73, %struct.TYPE_9__* %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  %79 = call i32 @patch_min_use(%struct.TYPE_9__* %78)
  br label %92

80:                                               ; preds = %41
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  %84 = load i32, i32* @EROFS, align 4
  %85 = sub nsw i32 0, %84
  %86 = call i64 @IN_SET(i32 %81, i32 %83, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @log_warning_errno(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %80
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %68
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = call i32 @server_flush_to_var(%struct.TYPE_8__* %96, i32 1)
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %29, %26, %14, %3
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %186, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @STORAGE_NONE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %186

111:                                              ; preds = %104
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @strjoina(i8* %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %116, i8** %8, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %146

121:                                              ; preds = %111
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %146, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* @O_RDWR, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = call i32 @open_journal(%struct.TYPE_8__* %125, i32 0, i8* %126, i32 %127, i32 0, i32* %130, i64* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %124
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @ENOENT, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp ne i32 %137, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @log_warning_errno(i32 %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %144, %124
  br label %168

146:                                              ; preds = %121, %111
  %147 = call i32 @mkdir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 493)
  %148 = call i32 @mkdir(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 493)
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 @mkdir_parents(i8* %149, i32 488)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* @O_RDWR, align 4
  %154 = load i32, i32* @O_CREAT, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  %161 = call i32 @open_journal(%struct.TYPE_8__* %151, i32 1, i8* %152, i32 %155, i32 0, i32* %158, i64* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %146
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @log_error_errno(i32 %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 %166, i32* %4, align 4
  br label %188

167:                                              ; preds = %146
  br label %168

168:                                              ; preds = %167, %145
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @server_add_acls(i64 %176, i32 0)
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  %181 = call i32 @cache_space_refresh(%struct.TYPE_8__* %178, %struct.TYPE_9__* %180)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = call i32 @patch_min_use(%struct.TYPE_9__* %183)
  br label %185

185:                                              ; preds = %173, %168
  br label %186

186:                                              ; preds = %185, %104, %99
  %187 = load i32, i32* %9, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186, %164
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i64 @flushed_flag_is_set(...) #1

declare dso_local i32 @mkdir_p(i8*, i32) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i32 @open_journal(%struct.TYPE_8__*, i32, i8*, i32, i32, i32*, i64*) #1

declare dso_local i32 @server_add_acls(i64, i32) #1

declare dso_local i32 @cache_space_refresh(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @patch_min_use(%struct.TYPE_9__*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @server_flush_to_var(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mkdir_parents(i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
